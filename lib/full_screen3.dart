import 'package:flutter/material.dart';
import 'package:tree_ui/Tile2.dart';
import 'package:tree_ui/color.dart';
import 'package:tree_ui/home.dart';
class FullScreen2 extends StatelessWidget {
  const FullScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor:MainColor,
      ),
      body: Column(

        children: [

          Row(

            children: [

              // 1st column
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Tile2(IconPath: "assets/back_arrow.png"),
                    SizedBox(height: 80),
                    Tile2(IconPath: "assets/sun.png"),
                    SizedBox(height: 50),
                    Tile2(IconPath: "assets/icon_2.png"),
                    SizedBox(height: 50),
                    Tile2(IconPath: "assets/icon_3.png"),
                    SizedBox(height: 50),
                    Tile2(IconPath: "assets/icon_4.png"),
                    SizedBox(height: 50),
                  ],
                ),
              ),

              // 2nd column
              SizedBox(width: 12),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 600,
                        width: 299,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(-10, 10),
                              blurRadius: 30,
                              color: MainColor.withOpacity(0.3),
                            ),
                          ],
                          color: MainColor,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/mum2.jpg"),
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(70),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              // 1st column
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Angelica',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'RUSSIYA',

                      style: TextStyle(

                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: MainColor,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 93),
                        child: Text(
                          'Thanks For Vigits',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    )
                    // Container(
                    //   height: 70,
                    //   width: 400,
                    //   decoration: BoxDecoration(
                    //     color: Colors.greenAccent,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child: Padding(
                    //     padding: EdgeInsets.only(left: 20, right: 20),
                    //     child: GestureDetector(
                    //       onTap: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) => Tile2(IconPath: 'Home',)),  // Home.dart पर नेविगेशन
                    //         );
                    //       },
                    //       child: Container(
                    //         height: 70,
                    //         width: 400,
                    //         decoration: BoxDecoration(
                    //           color: MainColor,
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         child: Center(
                    //           child: Text(
                    //             'More',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )


                  ],
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}


