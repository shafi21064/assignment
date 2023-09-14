import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatelessWidget {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignUpPage({super.key});

  void logIn (String email, password) async {
    try{
      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
        body: {
            'email' : email,
          'password' : password
        }
      );

      if(response.statusCode == 200){
        print('account created succesfully');
      }else{
        print('faield');
      }

    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
                width: 150,
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text('User Name'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                // obscureText: true,
                // obscuringCharacter: '*',
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text('Password'),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                logIn(emailController.toString(), passwordController.toString());
              },
              child: Container(
                margin: EdgeInsets.all(16),
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('Log in', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
