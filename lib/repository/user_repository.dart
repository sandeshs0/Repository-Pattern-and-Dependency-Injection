import 'package:di_repository/data_source/local/local_data_source.dart';
import 'package:di_repository/data_source/remote/remote_data_source.dart';
import 'package:di_repository/model/user.dart';

class UserRepository {
  // Check Internet Connection
  // Yes -> Call API from RemoteDataSource
  // No -> Call Local Database from LocalDataSource
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  bool isInternetConnected = false; // This should be acutally checked

  bool addUser(User user) {
    // Check Internet Connection
    if (isInternetConnected) {
      return remoteDataSource.addUser(user);
    } else {
      return localDataSource.addUser(user);
    }
  }

  List<User> getAllUsers() {
    // Check Internet Connection
    if (isInternetConnected) {
      return remoteDataSource.getAllUsers();
    } else {
      return localDataSource.getAllUsers();
    }
  }
}


// Dependency Injection
// it is a technique to make the classes independent of their dependencies.