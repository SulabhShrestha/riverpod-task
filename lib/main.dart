import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/routing/routing.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
        dialogTheme: DialogTheme(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(24)),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black),
          ),
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
        listTileTheme: ListTileThemeData(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.black),
          ),
        ),
        primarySwatch: Colors.blue,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder()
        }),
      ),
      routerConfig: routing,
    );
  }
}
