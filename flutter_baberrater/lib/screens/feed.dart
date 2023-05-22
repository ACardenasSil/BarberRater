import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_baberrater/widgets/addpostModal.dart';
import 'package:flutter_baberrater/widgets/postlist.dart';
import '../models/posts.dart';

class feed_Screen extends StatefulWidget {
  const feed_Screen({super.key});

  static const routeName = '/feed_Screen';

  @override
  State<feed_Screen> createState() => _feed_ScreenState();
}

class _feed_ScreenState extends State<feed_Screen> {
  final List<Post> _allpost = [];
  void _newPost(File image, String description) {
    final addp =
        Post(image: image, description: description, id: DateTime.now());
    setState(() {
      _allpost.add(addp);
    });
  }

  void _openAddPostOverlay(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder: (_) => addPost(_newPost));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: PostList(_allpost)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _openAddPostOverlay(context);
        },
      ),
    );
  }
}
