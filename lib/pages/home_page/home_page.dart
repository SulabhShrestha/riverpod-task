import 'package:flutter/material.dart';
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
              child: Text(
                "Posts",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            SizedBox(height: 16),
            GradientButton(
              child: Text(
                " Photos",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            SizedBox(height: 20),
            GradientButton(
              linearGradient: LinearGradient(
                colors: [Colors.red, Colors.orange],
              ),
              child: Text(
                "Todos",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
