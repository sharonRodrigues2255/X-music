import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/your_top_10/screens/mostly_played.dart';

class YourTopTen extends StatelessWidget {
  const YourTopTen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Your top 10"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: Container(
              child: TabBar(
                tabs: [
                  Text(
                    "Most Played",
                  ),
                  Text(
                    "Recently played",
                  )
                ],
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: kwhite),
                labelColor: kblack,
                unselectedLabelColor: Colors.grey,
                labelStyle: myfontNormal(size: 18.0),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [MostlyPlayed(), ListView()]),
      ),
    );
  }
}
