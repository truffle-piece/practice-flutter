import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/constrains.dart';
import 'package:recipe_app/models/recipe_bundel.dart';
import 'package:recipe_app/size_config.dart';

import 'categories.dart';
import 'recipe_bundel_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Catiories(),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
            child: GridView.builder(
              itemCount: recipeBundeles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                crossAxisSpacing:
                    SizeConfig.orientation == Orientation.landscape
                        ? SizeConfig.defaultSize! * 2
                        : 0,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => RecipeBundekCard(
                recipeBundle: recipeBundeles[index],
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
