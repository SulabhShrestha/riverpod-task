import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_task/providers/posts_provider.dart';
import 'package:riverpod_task/providers/search_text_provider.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsProv = ref.watch(postsProvider);
    debugPrint("Search text provider: ${ref.watch(searchTextProvider)}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts Page"),
        actions: [
          // Search button
          IconButton(
            onPressed: () {
              context.goNamed("search_page");
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: postsProv.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].title,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(data[index].body),
                          const SizedBox(height: 6),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Posted by: ${data[index].userId}")),
                        ],
                      ),
                    ),
                  );
                });
          },
          error: (_, __) => const Center(child: Text("Something went wrong")),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
