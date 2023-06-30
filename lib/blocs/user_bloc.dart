import 'dart:async';
import 'package:apph2/models/user_model.dart';

class UserBloc {
  Future<UserModel> fetchUser() async {
    // Aqui você pode fazer uma chamada assíncrona para buscar os dados do usuário, por exemplo, uma requisição HTTP.
    // Retorne o modelo de usuário com os dados obtidos.

    // Exemplo de implementação fictícia:
    await Future.delayed(const Duration(seconds: 2));
    return UserModel('John Doe', 30);
  }
}
