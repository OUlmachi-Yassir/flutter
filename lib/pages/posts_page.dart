import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  final String category;
  final String subCategory;

  const PostsPage({
    super.key,
    required this.category,
    required this.subCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category - $subCategory'),
      ),
      body: const Center(
        child: Text('Posts Page'),
      ),
    );
  }
}
