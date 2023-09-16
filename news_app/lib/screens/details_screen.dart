import 'package:flutter/material.dart';
import 'package:news_app/provider/comments_api_provider.dart';
import 'package:news_app/provider/post_api_provider.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  String title, body, appTitle;
   DetailsScreen({
     super.key,
     required this.title,
     required this.body,
     required this.appTitle
   });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CommentsApiProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text(appTitle),
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 200,
                child: Image.network('https://thumbs.dreamstime.com/b/news-header-background-title-abstract-colorful-global-map-text-hightech-design-blue-colorful-template-90494676.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5,),
               Text(
                 title,
                 style: const TextStyle(
                     fontSize: 26,
                     fontWeight: FontWeight.bold
                 ),
               ),
              const SizedBox(height: 25,),
               Text(
                body,
                 textAlign: TextAlign.left,
              ),
              const SizedBox(height: 15,),
              Text(
                body,
              ),
              const SizedBox(height: 15,),
              Text(
                body,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 15,),
              Text(
                body,
                textAlign: TextAlign.left,
              ),

              const SizedBox(height: 15,),
              Text(
                body,
                textAlign: TextAlign.left,
              ),

              const SizedBox(height: 35,),
              const Row(
                children: [
                  Text(
                    'Comments:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              FutureBuilder(
                  future: provider.getCommentsResponse(),
                  builder: (context, snapshot){
                    if(snapshot.connectionState==ConnectionState.waiting){
                      return Text('Loading');
                    }else {
                      return Container(
                        height: 250,
                        child: ListView.builder(
                            itemCount: provider.commentsApiResponse.length,
                            itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    title: Text(provider
                                        .commentsApiResponse[index]["name"]),
                                    subtitle: Text(provider.commentsApiResponse[index]["body"]),
                                  ),
                                );
                              }
                            ),
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );

  }
}
