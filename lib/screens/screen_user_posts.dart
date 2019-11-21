import 'dart:convert';

import 'package:amala_statistics/api/post_api_service.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenUserPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: _buildBody(context),
      
    );
  }
}

FutureBuilder<Response> _buildBody(BuildContext context) {
  return FutureBuilder<Response>(
    future: Provider.of<PostApiService>(context).getPosts(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
              textAlign: TextAlign.center,
              textScaleFactor: 1.3,
            ),
          );
        }
        final List posts = json.decode(snapshot.data.bodyString);
        return _buildPosts(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildPosts(BuildContext context, List posts) {
  return ListView.builder(
    itemCount: posts.length,
    padding: EdgeInsets.all(8),
    itemBuilder: (context, index) {
      return Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            posts[index]['title'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(posts[index]['body']),
          onTap: () => _navigateToPost(context, posts[index]['id']),
        ),
      );
    },
  );
}

void _navigateToPost(BuildContext context, int id) {
  Navigator.of(context).push(MaterialPageRoute(
      //builder:(context)=> SinglePostPage(postId: id),
      ));
}
