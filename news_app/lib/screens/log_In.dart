import 'package:flutter/material.dart';
import 'package:news_app/Widget/custom_button.dart';
import 'package:news_app/Widget/custom_text_button.dart';
import 'package:news_app/Widget/input_form.dart';
import 'package:news_app/screens/bottom_navigation.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:http/http.dart' as http;

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void logIn(String email, password) async {
      try {
        var response = await http.post(
            Uri.parse('https://reqres.in/api/register'),
            body: {'email': email, 'password': password});
        if (response.statusCode == 200) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => BottomNavigation()),
              (route) => false);
        } else {
          print('Failed');
        }
      } catch (e) {
        print(e.toString());
      }
      print(emailController.text);
      print(passwordController.text);
    }

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    'Welcome!!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    children: [
                      InputForm(
                        obsecureTxt: false,
                        boxHintText: 'user name',
                        controller: emailController,
                      ),
                      InputForm(
                        obsecureTxt: true,
                        boxHintText: 'password',
                        controller: passwordController,
                      ),
                      //SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextButton(buttonName: 'forgot password?'),
                          CustomTextButton(buttonName: 'Create a account')
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              minimumSize: const Size(250, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            logIn(emailController.text.toString(),
                                passwordController.text.toString());
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 16),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
