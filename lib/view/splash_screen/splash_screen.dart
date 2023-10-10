import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/images/images_constants.dart';
import 'package:musicplayer_project/view/homepage/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(ImagesConstants.logo),
      ),
    ));
  }
}
