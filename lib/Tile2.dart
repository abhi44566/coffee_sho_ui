import 'package:flutter/material.dart';
import 'package:tree_ui/color.dart';
import 'package:tree_ui/home.dart';

import 'color.dart';
class Tile2 extends StatelessWidget {
  Tile2({super.key, required this.IconPath});

  String IconPath;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 70,
      height:60,
      decoration: BoxDecoration(
       boxShadow:[ BoxShadow(
         offset:Offset(0, 10),
         color: MainColor.withOpacity(0.0)

       ),
  ],
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Image.asset(IconPath),

    );
  }
}
