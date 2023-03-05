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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[100],
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            keywordName,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.close,
                            size: 15,
                          )
                        ],
                      ),
                    );
  }
}