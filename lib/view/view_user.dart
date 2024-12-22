import 'package:di_repository/di/di.dart';
import 'package:di_repository/model/user.dart';
import 'package:di_repository/repository/user_repository.dart';

void main() {
  initModule();
  UserRepository userRepository = getIt<UserRepository>();
  List<User> users = userRepository.getAllUsers();

  print(users);
}
