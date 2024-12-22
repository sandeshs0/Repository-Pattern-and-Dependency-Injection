import 'package:di_repository/di/di.dart';
import 'package:di_repository/model/user.dart';
import 'package:di_repository/repository/user_repository.dart';

void main() {
  initModule();
  User user = User(id: 4, name: 'Ana de Armas', age: 30);

  UserRepository userRepository = getIt<UserRepository>();
  userRepository.addUser(user);

// display all users
  print(userRepository.getAllUsers());
}
