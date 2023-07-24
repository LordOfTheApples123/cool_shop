import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_request.freezed.dart';
part 'favorites_request.g.dart';

@Freezed(
  toJson: true,
  fromJson: false,
)
class FavoritesRequest with _$FavoritesRequest {
  const factory FavoritesRequest({
    required int product,
  }) = _FavoritesRequest;
}
