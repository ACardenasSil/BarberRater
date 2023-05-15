import 'package:flutter/material.dart';
import 'package:flutter_baberrater/models/posts.dart';
import 'package:intl/intl.dart';

class PostList extends StatelessWidget {
  const PostList(this.posts, {super.key});
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: ListTile(
            leading: Image.file(posts[index].image),
            title: Text(DateFormat.yMMMd().format(posts[index].id)),
            subtitle: Text(posts[index].description),
            isThreeLine: true,
          ),
        );
      },
    );
  }
}
