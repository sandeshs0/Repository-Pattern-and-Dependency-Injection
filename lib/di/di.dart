import 'package:di_repository/data_source/local/local_data_source.dart';
import 'package:di_repository/data_source/remote/remote_data_source.dart';
import 'package:di_repository/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

final getIt= GetIt.instance;

void initModule(){
  // Father 
  getIt.registerLazySingleton<RemoteDataSource>(()=>RemoteDataSource());

  // Mother
  getIt.registerLazySingleton<LocalDataSource>(()=>LocalDataSource());

  // Child
  getIt.registerLazySingleton<UserRepository>(
    ()=>UserRepository(
    remoteDataSource: getIt(),
    localDataSource: getIt(),
  ));
}