import 'package:flutter/material.dart';

import 'color.dart';
class Tile1 extends StatelessWidget {
   Tile1({super.key,
     required this.ImagePath,
     required this.Price,
     required this.Name,
     required this.Country,

   });

  String ImagePath;
  String Price;
  String Name;
  String Country;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
             // offset: Offset(0, 2),
              color: Colors.grey ,
              //blurRadius: 1,
              
            ),
          ],

          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      height: 280,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImagePath)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(Name,style: TextStyle(
                    fontWeight:FontWeight.bold)),Spacer(),Text(Price)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(Country, style: TextStyle(fontWeight: FontWeight.bold,)),
          )
        ],
      ),
    );
  }
}
