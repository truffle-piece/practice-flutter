import 'package:flutter/material.dart';
import 'package:recipe_app/constrains.dart';
import 'package:recipe_app/size_config.dart';

class Catiories extends StatefulWidget {
  const Catiories({super.key});

  @override
  State<Catiories> createState() => _CatioriesState();
}

class _CatioriesState extends State<Catiories> {
  List<String> categories = [
    "All",
    "Indian",
    "Italian",
    "Mexico",
    "Chinese",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.defaultSize! * 2,
      ),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 3.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 2,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2,
          vertical: SizeConfig.defaultSize! * 0.5,
        ),
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xffeff3ff) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize! * 1.6,
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor : Color(0xffc2c2b5),
          ),
        ),
      ),
    );
  }
}
