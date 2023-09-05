import 'package:flutter/material.dart';
import 'package:portfoilo_app/pages/home_page.dart';
import 'package:portfoilo_app/pages/navigation.dart';
import 'package:portfoilo_app/widgets/list_tile.dart';
import 'package:portfoilo_app/widgets/rich_text.dart';

class StudentInfoPage extends StatelessWidget {
  const StudentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Student Info'
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 400,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.5),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                child :Image(
                    image: AssetImage('assets/images/profile.png', )),
              ),
              RichTextWidget(title: 'Name:', subtitle: 'Md Shadikul Islam Shafi'),
              RichTextWidget(title: 'Roll:', subtitle: '114097'),
              RichTextWidget(title: 'Reg:', subtitle: '1500915182'),
              RichTextWidget(title: 'Dept:', subtitle: 'Computer Technology'),
              const SizedBox(height: 20,),

              ElevatedButton(onPressed: (){
                showDialog(context: context, builder: (BuildContext)=>AlertDialog(

                  title: const Text('Are you Sure?'),
                  content: const Text('This will go back to you Home Page'),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> BottomNavigation()),
                                  (route) => false);
                          ScaffoldMessenger.of(context).showSnackBar
                            (SnackBar(content: Text('You Go Backed'),
                            action: SnackBarAction(
                                label: 'OK',
                                onPressed: (){})
                          ));
                        }, child: const Text('Yes')),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text('No')),
                      ],
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
                );
              }, child: const Text('Go Back'))
            ],
          ),
        ),
      ),
    );
  }
}
