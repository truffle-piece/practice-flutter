import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mental_health/util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Jared!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '23 Jan, 2021',
                        style: TextStyle(
                          color: Colors.blue[400],
                        ),
                      )
                    ],
                  ),
                  Ink(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              //search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for something',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              // how do you feel?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // faces 4 smails
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EmoticonFace(
                    emoticonFace: '😔',
                    emoticonText: 'Bodly',
                  ),
                  EmoticonFace(
                    emoticonFace: '😐',
                    emoticonText: 'Fine',
                  ),
                  EmoticonFace(
                    emoticonFace: '🙂',
                    emoticonText: 'Well',
                  ),
                  EmoticonFace(
                    emoticonFace: '😀',
                    emoticonText: 'Excellent',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
