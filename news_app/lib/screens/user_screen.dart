import 'package:flutter/material.dart';
import 'package:news_app/provider/post_api_provider.dart';
import 'package:news_app/screens/drawer_sreen.dart';
import 'package:news_app/screens/user_details_screen.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Screen'),
        centerTitle: true,
      ),
      drawer: DrawerScreen(),
      body: FutureBuilder(
        future: provider.getPostResponse('users'),
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
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserDetailsScreen(
                                  appTitile: provider.apiResponse[index]["username"],
                                      name: provider.apiResponse[index]["name"],
                                      email: provider.apiResponse[index]
                                          ["email"],
                                      address:
                                          'Street Name: ${provider.apiResponse[index]["address"]["street"]}, \nCity: ${provider.apiResponse[index]["address"]["city"]}',
                                    )));
                      },
                      child: ListTile(
                        leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://image.shutterstock.com/image-vector/dotted-spiral-vortex-royaltyfree-images-600w-2227567913.jpg')),
                        title: Text(
                            provider.apiResponse[index]["username"].toString()),
                        subtitle: Text(provider.apiResponse[index]["email"]),
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
