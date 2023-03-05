import 'package:flutter/material.dart';

class KeywordContainer extends StatelessWidget {
  final String keywordName;
  const KeywordContainer({
    required this.keywordName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.black),
          color: Colors.purple[300],
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          keywordName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
    );
  }
}