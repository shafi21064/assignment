import 'package:flutter/material.dart';
import 'package:news_app/provider/comments_api_provider.dart';
import 'package:news_app/provider/post_api_provider.dart';
import 'package:news_app/screens/details_screen.dart';
import 'package:news_app/screens/drawer_sreen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var postProvider = Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: FutureBuilder(
        future: postProvider.getPostResponse('posts'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text('Loading..'));
          } else {
            return ListView.builder(
                itemCount: postProvider.apiResponse.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      title: postProvider.apiResponse[index]
                                          ["title"],
                                      body: postProvider.apiResponse[index]
                                          ["body"],
                                      appTitle: postProvider.apiResponse[index]
                                          ["title"],
                                    )));
                      },
                      child: ListTile(
                        leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://image.shutterstock.com/image-vector/dotted-spiral-vortex-royaltyfree-images-600w-2227567913.jpg')),
                        title: Text(postProvider.apiResponse[index]["title"]
                            .toString()),
                        subtitle: const Text('this is a news'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
