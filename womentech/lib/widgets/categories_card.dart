import 'package:flutter/material.dart';

class CatContainer extends StatelessWidget {
  final String catName;
  final Color color;
  const CatContainer({
    required this.catName,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(catName == "Add New Category"){
        Navigator.pushNamed(context, '/categoriesPage', arguments: catName);
        }
        else{
        Navigator.pushNamed(context, '/categoryMailPage', arguments: catName);}
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.black),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          catName,
          
            textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
