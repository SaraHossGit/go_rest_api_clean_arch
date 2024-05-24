import 'package:flutter/material.dart';
import 'package:go_rest_api_clean_arch/comments_screen.dart';
import 'package:go_rest_api_clean_arch/get_it.dart';
import 'package:go_rest_api_clean_arch/posts_screen.dart';
import 'package:go_rest_api_clean_arch/todo_screen.dart';
import 'package:go_rest_api_clean_arch/users_screen.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostsScreen(),
    );
  }
}