import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/utils/images/images_constants.dart';
import 'package:musicplayer_project/view/favorites/favorites.dart';
import 'package:musicplayer_project/view/home_page/widgets/button_square_button.dart';
import 'package:musicplayer_project/view/home_page/widgets/carousal_slider_widget.dart';
import 'package:musicplayer_project/view/home_page/widgets/subtitile_widget.dart';
import 'package:musicplayer_project/view/search/search.dart';

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
        actions: [const Icon(Icons.more_vert), kwidth10],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 14),
              child: InkWell(
                onTap: () {
                  showSearch(context: context, delegate: SearchScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10)),
                  height: 43,
                  width: double.infinity,
                  child: Row(
                    children: [
                      kwidth10,
                      Icon(
                        Icons.search,
                        size: 25,
                      ),
                      kwidth10,
                      Text(
                        "search for songs",
                        style: myfontNormal(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SubtitleWidget(
              title: "All Songs",
            ),
            const CarousalSliderWidget(),
            kheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Favorites()));
                  },
                  child: const ButtonSquareCard(
                    title: 'Favourites',
                    image: AssetImage(ImagesConstants.favorites),
                  ),
                ),
                const ButtonSquareCard(
                  title: "Your top 10",
                  image: AssetImage(ImagesConstants.top10),
                ),
              ],
            ),
            kheight10,
            SubtitleWidget(title: "Suggeted for you"),
          ],
        ),
      ),
    );
  }
}

String greeting() {
  final time = DateTime.now().hour;
  if (time >= 23 && time <= 6) {
    return "Good Night!!";
  } else if (time >= 6 && time <= 12) {
    return "Good Morning!!";
  } else if (time >= 12 && time <= 17) {
    return "Good Afternoon!!";
  } else if (time >= 17 && time <= 23) {
    return "Good Evening!!";
  } else {
    return "Parelel time";
  }
}
