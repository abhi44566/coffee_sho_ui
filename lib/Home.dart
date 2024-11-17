//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tree_ui/color.dart';
import 'package:tree_ui/full_screen2.dart';
import 'package:tree_ui/full_screen3.dart';
import 'package:tree_ui/home.dart';

import 'Tile1.dart';
import 'full_screen1.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         bottomNavigationBar: BottomNavigationBar(items: [
               BottomNavigationBarItem(icon:Icon(Icons.star, color: MainColor,),label: ""),
           BottomNavigationBarItem(icon:Icon(Icons.favorite_border,),label: ""),
           BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined,),label: ""),
         ]),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                      BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      child: Container(
                        height: 230,
                        width: double.maxFinite,
                        color:MainColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset("assets/menu.png",),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Row(
                        children: [
                          Text(
                            "Hii Coders!",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Image.asset("assets/logo.png")
                        ],
                      ),
                    ),
            
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 15, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          child: Container(
            
                            height: 70,
                            width: 300,
            
                            child: Expanded(child:
                                TextField(
                                  decoration: InputDecoration(
                                      label: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 20),
                                        child: Text("Search"),
                                      ),
                                      border: InputBorder.none),
                                )
                            ),
                          ),
                          width: double.maxFinite,
                          height: 70,
                          color: Colors.white,
                        ),
                      ),
                    )
            
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recomnended",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 31,
                              width: 75,
                              color: MainColor,
                              child: Center(
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                       SizedBox(
                         height: 20,
                       ),
            
            
                      Container(
                        width: double.maxFinite,
                        height: 280,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector
                              (onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FullScreen1()),
                              );
                            },

                                child: Tile1(ImagePath: "assets/mum.jpg", Price: "\$400", Name: "MUMBAI", Country: "RUSSYA")),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FullScreen2()),
                                  );
                                },
                                child: Tile1(ImagePath: "assets/noi1.jpg", Price: "\$300", Name: "NOIDA", Country: "INDIYA")),
                            SizedBox(
                              width: 20,
                            ),
            
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FullScreen3()),
                                  );
                                },
                                child: Tile1(ImagePath: "assets/and1.jpg", Price: "\$500", Name: "NIGHT", Country: "VILLAGE")),
                          ],
                        ),
                      ),
                        SizedBox(
                          height: 20,
                        ),
                      Row(
                        children: [
                          Text(
                            "Featured Plants",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 35,
                              width: 75,
                              color: MainColor,
                              child: Center(
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                     SizedBox(
                       height: 10,
                     ),
                      Container(
                        height: 200,
                        width: double.maxFinite,

                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 20,
                              width: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.red,
                                image: DecorationImage(
                                  image: AssetImage("assets/mum4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),


                            SizedBox(
                              width: 10,
                            ),

                          Container(
                            height: 20,
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("assets/noi4.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            SizedBox(
                                  width: 10,
                               ),
                            Container(
                        height: 20,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("assets/mum3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),



                          ],
                        ),
                      )
                    ],
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
