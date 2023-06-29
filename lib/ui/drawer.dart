import 'package:flutter/material.dart';

Widget edutechDrawer (context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      children: [
        ListTile(
          title: Text("Home"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Watch List"),
          onTap: () {

            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("My Account"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]
    ),
  );
}
