import 'package:flutter_application_1/app/data/model/auth_model.dart';
import 'package:flutter_application_1/app/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();

  Future<Auth> login(String username, String password) async {
    return Auth.fromJson(await apiClient.login(username, password));
  }
}
