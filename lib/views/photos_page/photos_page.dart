import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/providers/photos_provider.dart';

class PhotosPage extends ConsumerWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photosProv = ref.watch(photosProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos Page"),
      ),
      body: photosProv.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(data[index].id.toString()),
                    leading: Image.network(data[index].url),
                  );
                });
          },
          error: (_, __) => const Text("Something went wrong"),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
