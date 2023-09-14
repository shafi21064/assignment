import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/input_form.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                          boxHintText: 'user name'
                      ),
                      InputForm(
                        obsecureTxt: true,
                        boxHintText: 'password',
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
                      const CustomButton(),
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
