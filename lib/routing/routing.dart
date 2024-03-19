import 'package:go_router/go_router.dart';
import 'package:riverpod_task/pages/home_page/home_page.dart';

// GoRouter configuration
final routing = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
