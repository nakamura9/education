import 'package:flutter/material.dart';

Widget sectionHeading (label) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    child: Text(label,
      textAlign: TextAlign.left, 
      style: TextStyle(
        fontWeight: FontWeight.bold, 
        fontSize: 16,
      )
    ),
  );
}