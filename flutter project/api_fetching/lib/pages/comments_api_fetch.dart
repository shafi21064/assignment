import 'package:api_fetching/providers/album_provider.dart';
import 'package:api_fetching/providers/comments_provider.dart';
import 'package:api_fetching/providers/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsApiFetch extends StatefulWidget {
  const CommentsApiFetch({super.key});

  @override
  State<CommentsApiFetch> createState() => _CommentsApiFetchState();
}

class _CommentsApiFetchState extends State<CommentsApiFetch> {
  @override
  void initState() {
    // TODO: implement initState
    var postApiProvider =
        Provider.of<CommentsApiProvider>(context, listen: false);

    Future.delayed(Duration.zero, () {
      postApiProvider.getCommentsResponse();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PostApiProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Comments Api'),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: provider.getApiResponse(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text('loading');
              } else {
                return ListView(
                  children: [
                    Text(provider.apiResponse.toString())
                  ],
                );
              }
            }));
  }
}
