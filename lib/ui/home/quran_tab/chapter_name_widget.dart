import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/chapter_details_screen/chapter_details_screen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String chapterTitle;
  int index;

  ChapterTitleWidget({required this.chapterTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments:
                ChapterDetailsArgs(chapterTitle: chapterTitle, index: index));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          child: Text(
            chapterTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class ChapterDetailsArgs {
  String chapterTitle;
  int index;

  ChapterDetailsArgs({required this.chapterTitle, required this.index});
}
