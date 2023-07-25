
//подсмотрел в farm, мне понравилось
//не совсем правда понял, зачем в AppComponents нужны Service
import 'package:cool_shop/data/client/product_client/product_client.dart';
import 'package:cool_shop/internal/token_handling/token_interceptor.dart';
import 'package:cool_shop/internal/token_handling/token_repository.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/buffer_service_wrapper.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


//подсмотрел в farm. Мне понравилось. Container в котором можно сделать init()
//и проинициализировать всё, что нельзя заинитить в провайдере
class AppComponents{


  final TokenRepository tokenRepository = TokenRepository();

  final AuthUseCase authUseCase = AuthUseCase();
  //late оправдан
  late final ProductService _service;
  late final BufferServiceWrapper serviceWrapper;

  final Dio dio = Dio();

  static AppComponents? _instance;

  AppComponents._();

  factory AppComponents() => _instance ??= AppComponents._();

  Future<void> init() async{
    dio.options.baseUrl = "https://farm.fbtw.ru";
    dio.options.contentType = 'application/json';
    dio.interceptors.add(PrettyDioLogger());



    await tokenRepository.initTokens();
    dio.interceptors.add(TokenInterceptor(dio, tokenRepository));

    _service = ProductService(client: ProductClient(dio));
    await _service.init();



    serviceWrapper = BufferServiceWrapper(_service);

  }
}