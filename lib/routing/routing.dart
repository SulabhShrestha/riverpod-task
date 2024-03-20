import 'package:go_router/go_router.dart';
import 'package:riverpod_task/pages/home_page/home_page.dart';
import 'package:riverpod_task/pages/photos_page/photos_page.dart';
import 'package:riverpod_task/pages/posts_page/posts_page.dart';
import 'package:riverpod_task/pages/search_page/search_page.dart';
import 'package:riverpod_task/pages/todos_page/todos_page.dart';

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
          routes: [
            GoRoute(
              name: "search_page",
              path: 'search',
              builder: (context, state) => const SearchPage(),
            ),
          ],
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
