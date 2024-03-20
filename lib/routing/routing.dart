import 'package:go_router/go_router.dart';
import 'package:riverpod_task/views/home_page/home_page.dart';
import 'package:riverpod_task/views/photos_page/photos_page.dart';
import 'package:riverpod_task/views/posts_page/posts_page.dart';
import 'package:riverpod_task/views/todos_page/todos_page.dart';

// GoRouter configuration
final routing = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'posts',
          builder: (context, state) => const PostsPage(),
        ),
        GoRoute(
          path: 'photos',
          builder: (context, state) => const PhotosPage(),
        ),
        GoRoute(
          path: 'todos',
          builder: (context, state) => const TodosPage(),
        ),
      ],
    ),
  ],
);
