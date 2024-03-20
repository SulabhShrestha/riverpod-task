import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/providers/search_text_provider.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          onSubmitted: (value) {
            if (value.isEmpty) return;

            ref.read(searchTextProvider.notifier).state = value;
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              if (_searchController.text.isEmpty) return;

              ref.read(searchTextProvider.notifier).state =
                  _searchController.text;
              Navigator.pop(context);
            },
            child: const Text("Search"),
          ),
        ],
      ),
    );
  }
}
