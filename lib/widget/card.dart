import 'package:flutter/material.dart';

const url = 'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80';

Widget squareCard (Map<String, dynamic> props) {
  Widget content;
  if(props['icon'] != null) {
    content = props['icon'];
  } else {
   content = Expanded(
      child: Image(
        width: 70,
        height: 70,
        image: NetworkImage(props['url'])
        )
    ); 
  }
  
  return Column(
    children: [
        Card(
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: content,
            )
          ),
      Text(props['title'])
    ],
  );
}


Widget roundCard (Map<String, dynamic> props) {
  Widget content;
  if(props['icon'] != null) {
    content = props['icon'];
  } else {
   content = Expanded(
      child: Image(
        width: 75,
        height: 75,
        image: NetworkImage(props['url'])
        )
    ); 
  }

  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37.5),
          color: Colors.grey.shade200,
          
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: content,
        ) 
      ),
      Text(props['title'])
    ],
  );
}


Widget videoCard (Map<String, dynamic> props) {
  return Column(
    children: [
      Card(
        child: Stack(children: [
              Center(
                child: Expanded(
                child: Image(
                  width: 70,
                  height: 70,
                  image: NetworkImage(props['url'])
                ),
                          ),
              ),
            Container(
              height: 80,
              width: 80,
              child: Column(
                children: [
                  SizedBox( height: 60),
                  LinearProgressIndicator(
                    minHeight: 5,
                    value: 0.5 //props['progress']
                  ),
                  SizedBox( height: 15),
                ],
              ),
            )
            
        ],)
      ),
      Text(props['title'], style: TextStyle(fontWeight: FontWeight.bold))
    ],
  );
}
