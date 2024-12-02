import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),// this is used to display the ui components such as battery, status etc
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2* kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(//used when the things are to be put one over the other
          children: [
            Align( // this place3s the shapes for the background gradient
              alignment: AlignmentDirectional(3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-3, -0.3),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1.2),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFFFFAB40),
                ),
              ),
            ),
            BackdropFilter(  // blurr effect
              filter: ImageFilter.blur(
                sigmaX: 100.0,
                sigmaY: 100.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              ),

              // BACKGROUND ends and further Ui starts
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '📍Ghaziabad',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Goodmorning',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/1.png'
                    ),
                    Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                   Center(
                     child: Text(
                      'Friday 16 · 09.41am',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                     ),
                   ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                          'assets/11.png',
                          scale: 8,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sunrise',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '5:37 am',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                          ],
                        ),



                          Row(
                          children: [
                            Image.asset(
                          'assets/12.png',
                          scale: 8,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sunset',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '6:30 pm',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                          ],



                        )
                      ],
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        thickness: 0.1,
                        color: Colors.grey,
                      ),
                    ),




                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                          'assets/13.png',
                          scale: 8,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Temp Max',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '12°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                          ],
                        ),



                          Row(
                          children: [
                            Image.asset(
                          'assets/14.png',
                          scale: 8,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Temp Min',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '8°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                          ],
                        )
                      ],
                    ),



                  ],
                ),
              )
          ],
          ),
        ),
        ),
      );
  }
}