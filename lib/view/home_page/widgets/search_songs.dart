import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';

class SearchForSongsWidget extends StatelessWidget {
  const SearchForSongsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown, borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
