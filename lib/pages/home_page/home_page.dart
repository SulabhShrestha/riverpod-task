import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_task/pages/home_page/widgets/gradient_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientButton(
              child: const Text(
                "Posts",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                context.go("/posts");
              },
            ),
            const SizedBox(height: 16),
            GradientButton(
              child: const Text(
                " Photos",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                context.go("/photos");
              },
            ),
            const SizedBox(height: 20),
            GradientButton(
              linearGradient: const LinearGradient(
                colors: [Colors.red, Colors.orange],
              ),
              child: const Text(
                "Todos",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                context.go("/todos");
              },
            ),
          ],
        ),
      ),
    );
  }
}
