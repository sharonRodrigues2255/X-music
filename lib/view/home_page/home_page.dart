import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/home_page/widgets/carousal_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        title: Text(
          greeting().toString(),
          style: myfontBold(size: 28.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "All Songs",
              style: myfontBold(color: kred, size: 22.0),
            ),
          ),
          CarousalSliderWidget()
        ],
      ),
    );
  }
}

String greeting() {
  final time = DateTime.now().hour;
  if (time >= 23 || time <= 6) {
    return "Good Night!!";
  } else if (time >= 6 || time <= 12) {
    return "Good Morning!!";
  } else if (time >= 12 || time <= 17) {
    return "Good Afternoon!!";
  } else {
    return "Good Evening!!";
  }
}
