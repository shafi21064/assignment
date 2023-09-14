import 'package:api_fetching/providers/album_provider.dart';
import 'package:api_fetching/providers/comments_provider.dart';
import 'package:api_fetching/providers/photos_provider.dart';
import 'package:api_fetching/providers/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  @override
  void initState() {
    var postApiProvider = Provider.of<PostApiProvider>(context, listen: false);
    var commentsApiProvider =
        Provider.of<CommentsApiProvider>(context, listen: false);
    var albumApiProvider = Provider.of<AlbumApiProvider>(context, listen: false);
    var photosApiProvider = Provider.of<PhotosApiProvider>(context, listen: false);
    Future.delayed(Duration.zero, () {
      postApiProvider.getApiResponse();
      commentsApiProvider.getCommentsResponse();
      albumApiProvider.getAlbumResponse();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var postApiProvider = Provider.of<PostApiProvider>(context, listen: false);
    var commentsApiProvider = Provider.of<CommentsApiProvider>(context, listen: false);
    var albumApiProvider = Provider.of<AlbumApiProvider>(context, listen: false);
    var photosApiProvider = Provider.of<PhotosApiProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Api Fetch'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  postApiProvider.getApiResponse();
                },
                child: const Text('Post Fetch'),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: (){
                commentsApiProvider.getCommentsResponse();
              }, child: const Text('Comments Fetch')),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: (){
               albumApiProvider.getAlbumResponse();
              },
                  child: const Text('Album Fetch')),

              const SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: (){
                photosApiProvider.getPhotosResponse();
              },
                  child: const Text('Photos Fetch')),
            ],
          ),
        ));
  }
}
