import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth-Details';

  @override
  Widget build(BuildContext context) {
    HadethItem args = ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: TextStyle(fontSize: 26, color: Colors.black),
          ),
        ),
        body: Container(
          height: double.infinity,
          child: Card(
            margin: EdgeInsets.all(18),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
            child: Container(
                padding: EdgeInsets.all(18),
                child: SingleChildScrollView(
                    child: Text(
                  args.content,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ))),
          ),
        ),
      ),
    );
  }
}
