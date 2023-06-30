import 'package:flutter/foundation.dart';
import 'package:apph2/models/user_model.dart';

class UserViewModel extends ChangeNotifier {
  List<UserModel> _users = [];

  List<UserModel> get users => _users;

  void fetchUsers() {
    // Simulando a busca dos usuários em algum serviço ou banco de dados
    _users = [
      UserModel('João', 25),
      UserModel('Maria', 30),
      UserModel('Pedro', 27),
    ];

    // Notifica os observadores de que os dados foram atualizados
    notifyListeners();
  }
}
