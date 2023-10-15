import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        title: Text(
          greeting().toString(),
          style: myfontBold(),
        ),
      ),
    );
  }
}

String greeting() {
  final time = DateTime.now().hour;
  if (time >= 23 || time <= 6) {
    return "Good Night!";
  } else if (time >= 6 || time <= 12) {
    return "Good Morning!";
  } else if (time >= 12 || time <= 17) {
    return "Good Afternoon!";
  } else {
    return "Good Evening!";
  }
}
