import 'package:flutter/material.dart';
import 'package:news_app/provider/post_api_provider.dart';
import 'package:news_app/screens/comments_details_screen.dart';
import 'package:news_app/screens/details_screen.dart';
import 'package:news_app/screens/drawer_sreen.dart';
import 'package:provider/provider.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments Screen'),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: FutureBuilder(
        future: provider.getPostResponse('comments'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text('Loading..'));
          } else {
            return ListView.builder(
                itemCount: provider.apiResponse.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CommentsDetailsScreen(
                            name: provider.apiResponse[index]['name'],
                            email: provider.apiResponse[index]['email'],
                            body: provider.apiResponse[index]['body']
                        )));
                      },
                      child: ListTile(
                        leading: const CircleAvatar(backgroundImage: NetworkImage(
                            'https://image.shutterstock.com/image-vector/dotted-spiral-vortex-royaltyfree-images-600w-2227567913.jpg')),
                        title: Text(
                            provider.apiResponse[index]["name"].toString()),
                        subtitle: Text(provider.apiResponse[index]["email"].toString()),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                }
            );
          }
        },
      ),
    );
  }
}
