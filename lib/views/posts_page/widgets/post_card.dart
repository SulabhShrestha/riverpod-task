import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String body;
  final int postedBy;
  const PostCard(
      {super.key,
      required this.title,
      required this.body,
      required this.postedBy});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(body),
            const SizedBox(height: 6),
            Align(
                alignment: Alignment.bottomRight,
                child: Text("Posted by: $postedBy")),
          ],
        ),
      ),
    );
  }
}
