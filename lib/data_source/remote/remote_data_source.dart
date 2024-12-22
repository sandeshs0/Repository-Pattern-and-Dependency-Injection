import 'package:di_repository/model/user.dart';

class RemoteDataSource {
  List<User> users = [
    User(
      id:1,
      name:'Remote Brad Pitt',
      age: 57,
    ),
    User(
      id:2,
      name:'Remote Leonardo Di Caprio',
      age: 61,
    ),
    User(
      id:2,
      name:'Remote Margot Robbie',
      age: 29,
    ),
  ];

  bool addUser(User user) {
    // API Call
    users.add(user);
    return true;
  }

  List<User> getAllUsers() {
    return users;
  }

}