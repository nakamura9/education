import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/card.dart';

Widget cardList (List cards, Function renderer) {
  return Container(
    height: 120,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        
        return renderer(cards[index]);
      },
      itemCount: cards.length,
    )
    
  );
} 