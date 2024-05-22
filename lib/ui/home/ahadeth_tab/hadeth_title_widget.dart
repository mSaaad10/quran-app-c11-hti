import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_details/hadeth_details_screen.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_model.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethItem hadethItem;

  HadethTitleWidget({required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadethItem);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          hadethItem.title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
        ),
      ),
    );
  }
}
