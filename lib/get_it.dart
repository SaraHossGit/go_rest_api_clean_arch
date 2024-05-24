import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_rest_api_clean_arch/cubit/comment/comment_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/post/post_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/todo/todo_cubit.dart';
import 'package:go_rest_api_clean_arch/cubit/user/user_cubit.dart';
import 'package:go_rest_api_clean_arch/repo/comment/comment_repo.dart';
import 'package:go_rest_api_clean_arch/repo/post/post_repo.dart';
import 'package:go_rest_api_clean_arch/repo/todo/todo_repo.dart';
import 'package:go_rest_api_clean_arch/repo/user/user_repo.dart';
import 'package:go_rest_api_clean_arch/web_services.dart';

final getIt = GetIt.instance;

void initGetIt() {
  // Users
  getIt.registerLazySingleton<UserCubit>(() => UserCubit(getIt()));
  getIt.registerLazySingleton<UserRepo>(() => UserRepo(getIt()));
  // ToDos
  getIt.registerLazySingleton<ToDoCubit>(() => ToDoCubit(getIt()));
  getIt.registerLazySingleton<ToDoRepo>(() => ToDoRepo(getIt()));
  // Posts
  getIt.registerLazySingleton<PostCubit>(() => PostCubit(getIt()));
  getIt.registerLazySingleton<PostRepo>(() => PostRepo(getIt()));
  // Comments
  getIt.registerLazySingleton<CommentCubit>(() => CommentCubit(getIt()));
  getIt.registerLazySingleton<CommentRepo>(() => CommentRepo(getIt()));
  // Web Services
  getIt.registerLazySingleton<WebServices>(
          () => WebServices(createAndSetupDio()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  // dio
  //   ..options.connectTimeout = Duration(milliseconds: 200)
  //   ..options.receiveTimeout = Duration(milliseconds: 200);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}