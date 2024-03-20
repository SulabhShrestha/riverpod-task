import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/providers/search_text_provider.dart';

import 'search_field.dart';

class SmartAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const SmartAppBar({super.key});

  @override
  ConsumerState<SmartAppBar> createState() => _SmartAppBarState();

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class _SmartAppBarState extends ConsumerState<SmartAppBar> {
  bool isSearchIconClicked = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: isSearchIconClicked
            ? const SearchField()
            : const Text("Posts Page"),
      ),
      actions: [
        AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: isSearchIconClicked
              ? IconButton(
                  onPressed: () {
                    ref.read(searchTextProvider.notifier).state = "";
                    setState(() => isSearchIconClicked = false);
                  },
                  icon: const Icon(Icons.close),
                )
              : IconButton(
                  onPressed: () {
                    setState(() => isSearchIconClicked = true);
                  },
                  icon: const Icon(Icons.search),
                ),
        ),
      ],
    );
  }
}
