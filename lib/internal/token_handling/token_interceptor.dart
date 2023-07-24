import 'package:cool_shop/internal/token_handling/token_repository.dart';
import 'package:dio/dio.dart';

class TokenInterceptor extends QueuedInterceptor{

  final Dio _dio;

  get _accessToken => tokenRepo.accessToken;

  get _refreshToken => tokenRepo.refreshToken;

  final TokenRepository tokenRepo;

  TokenInterceptor(this._dio, this.tokenRepo);
  @override
  void onRequest(options, handler) {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    return super.onRequest(options, handler);
  }

  /// Save tokens received after authorization.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path == '/auth/email/part2') {
      tokenRepo.saveTokens(
        accessToken: response.data['access_token'],
        refreshToken: response.data['refresh_token'],
      );
    }

    super.onResponse(response, handler);
  }

  /// Update JWT token if it is outdated.
  @override
  Future onError(error, handler) async {
    // что тут fix не понял, но трогать не хочу
    if ((error.response?.statusCode == 403 ||
        error.response?.statusCode == 401) &&
        error.requestOptions.path != '/auth/email/part1') {
      await _refresh();
      if (tokenRepo.auth) {
        final response = await _retry(error.requestOptions);
        handler.resolve(response);
      }
    }
    return super.onError(error, handler);
  }

  /// Make a request to update the JWT token and save it to cache.
  Future<void> _refresh() async {
    if (_refreshToken == null) {
      return;
    }

    try {
      final response = await _dio.post(
        '/auth/token/refresh',
        data: {
          'refresh_token': _refreshToken,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        tokenRepo.saveTokens(
          accessToken: response.data['access_token'],
          refreshToken: response.data['refresh_token'],
        );
      }
    } catch (e) {
      tokenRepo.deleteTokens();
    }
  }

  /// Repeat the failed request.
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}