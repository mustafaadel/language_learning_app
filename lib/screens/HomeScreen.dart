import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/ColorsPage.dart';
import 'package:language_learning_app/screens/Family_Members.dart';
import 'package:language_learning_app/screens/NumbersPage.dart';
import 'package:language_learning_app/screens/PhrasesPage.dart';

import '../Components/categoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef6db),
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text('Language App'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xFFef9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }));
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
