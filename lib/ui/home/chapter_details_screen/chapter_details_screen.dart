import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/ui/home/chapter_details_screen/verse_widget.dart';
import 'package:quran_app/ui/home/quran_tab/chapter_name_widget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'Chapter-Details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.chapterTitle),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) =>
                    VerseWidget(verse: verses[index]),
                separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                    ),
                itemCount: verses.length),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    print('Hello');
    List<String> suraLines = fileContent.split('\n');
    print(suraLines);
    verses = suraLines;
    setState(() {});
  }
}
