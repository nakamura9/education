import 'package:flutter/material.dart';
import 'widget/section_heading.dart';
import 'package:scaler/scaler.dart';
import 'widget/card.dart';
import 'ui/drawer.dart';
import 'widget/card_list.dart';

void main() {
  runApp(const EdutecApp());
}



class EdutecApp extends StatelessWidget {
  const EdutecApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edutec',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700),
        useMaterial3: true,
      ),
      home: const LandingPage(title: 'Edutec Platform'),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _counter = 8;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: edutechDrawer(context),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              print("This is called");
            },
            icon: const Icon(Icons.person))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: Scaler.width(1, context),
            height: Scaler.height(0.33, context),
            padding: EdgeInsets.only(top: 10),
            child: Image(
              image: NetworkImage('https://images.unsplash.com/photo-1499529112087-3cb3b73cec95?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80')),
          ),
          sectionHeading("Subject"),
          Container(child: cardList([
            {
              "title": "Animal Husbandry",
              "url": "https://images.unsplash.com/photo-1614977645540-7abd88ba8e56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1073&q=80"
            }
          ], roundCard)),
          sectionHeading("New Courses"),
          Container(child: cardList([
            {
              "title": "Chicken Breeding",
              "url": "https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
            }
          ], squareCard)),
          sectionHeading("Continue Learning"),
          Container(child: cardList([
            {
              "title": "Novatek course",
              "progress": 0.6,
              "url": "https://images.unsplash.com/photo-1625246333195-78d9c38ad449?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
            },
            {
              "title": "Trust Academy",
              "progress": 0.2,
              "url": "https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
            },
          ], videoCard)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.chat_bubble_outline),
      ), 
    );
  }
}
