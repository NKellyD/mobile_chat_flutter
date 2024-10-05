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
      body: Stack(
        children: [
          ClipPath(
            clipper: BazierCurve(),
            child: Container(
             // padding: EdgeInsets.only(top: 10),
              color: Colors.blue,
              height: 400,
              //width: 400,
            ),
          ),
          //Image(image: AssetImage('assets/images/kdlogo.jpg')),

        ],
      ),
    );
  }
}




class BazierCurve extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();


    path.lineTo(0, size.height * 0.75);

    path.quadraticBezierTo(
        size.width * 0.30,
        size.height * 0.5,
        size.width * 0.5,
        size.height * 0.75
    );

    path.quadraticBezierTo(
        size.width * 0.75,
        size.height + 1,
        size.width ,
        size.height * 0.55
    );

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}

