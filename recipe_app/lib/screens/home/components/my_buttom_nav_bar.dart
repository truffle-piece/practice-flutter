import 'package:flutter/material.dart';
import 'package:recipe_app/size_config.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 5.2,
    );
  }
}
