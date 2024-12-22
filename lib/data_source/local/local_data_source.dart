import 'package:di_repository/model/user.dart';

class LocalDataSource {
  List<User> users = [
    User(
      id:1,
      name:'Brad Pitt',
      age: 57,
    ),
    User(
      id:2,
      name:'Leonardo Di Caprio',
      age: 61,
    ),
  ];

  bool addUser(User user) {
  //  Local Database Call (Hive/ObjectBox/SharedPreference)
    users.add(user);
    return true;
  }

  List<User> getAllUsers() {
    return users;
  }
}
