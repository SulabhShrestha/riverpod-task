import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/views/posts_page/widgets/post_card.dart';
import 'package:riverpod_task/providers/posts_provider.dart';
import 'package:riverpod_task/providers/search_text_provider.dart';

import 'package:riverpod_task/views/posts_page/widgets/smart_app_bar.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsProv = ref.watch(postsProvider);
    final searchTextProv = ref.watch(searchTextProvider);

    return Scaffold(
      appBar: const SmartAppBar(),
      body: postsProv.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  if (searchTextProv.isNotEmpty) {
                    // either the text should be in title or body
                    if (data[index].title.contains(searchTextProv) ||
                        data[index].body.contains(searchTextProv)) {
                      return PostCard(
                          title: data[index].title,
                          body: data[index].body,
                          postedBy: data[index].userId);
                    }
                    return const SizedBox(); // Not displaying when the user searches for something which is not found
                  }
                  return PostCard(
                      title: data[index].title,
                      body: data[index].body,
                      postedBy: data[index].userId);
                });
          },
          error: (_, __) => const Center(child: Text("Something went wrong")),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
