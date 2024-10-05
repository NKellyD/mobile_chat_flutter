import 'package:flutter/material.dart';
import 'package:mobile_chat_flutter/widgets/form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UserName = TextEditingController();
  final Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/images/kdlogo.jpg')),
          SizedBox(height: 20,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getTextFormField(controller: UserName, hintName: 'user'),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getTextFormField(controller: Password, hintName: 'password'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
