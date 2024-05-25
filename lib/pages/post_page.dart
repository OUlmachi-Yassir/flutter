import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final String title;
  final String category;
  final String subCategory;


  const PostPage({
    super.key,
    required this.title,
    required this.category,
    required this.subCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Category: $category'),
            Text('Sub-category: $subCategory'),
          ],
        ),
      ),
    );
  }
}
