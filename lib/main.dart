import 'package:flutter/material.dart';
import 'package:riverpod_task/models/comment_model.dart';
import 'package:riverpod_task/routing/routing.dart';

void main() {
  var model =
      const CommentModel(firstName: "firstName", lastName: "lastName", age: 12);
  debugPrint(model.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Riverpod Task',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue.shade600,
            foregroundColor: Colors.white),
        primarySwatch: Colors.blue,
      ),
      routerConfig: routing,
    );
  }
}
