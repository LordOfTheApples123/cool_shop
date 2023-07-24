import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/screens/utils/value_stream_wrapper.dart';

class AuthUseCase{
  final ValueStreamWrapper<bool> _auth = ValueStreamWrapper();

  bool get isAuthorized => _auth.valueOrNull ?? AppComponents().tokenRepository.auth;

  Stream<bool> get stream => _auth.stream;

  void auth(){
    _auth.accept(true);
  }

  void unAuth(){
    _auth.accept(false);
  }

  void dispose(){
    _auth.dispose();
  }
}