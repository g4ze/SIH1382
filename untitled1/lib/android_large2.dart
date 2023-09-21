import 'package:flutter/material.dart';

class AndroidLarge2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF389C9A)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/360x800"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 99.39,
                top: 580.22,
                child: Container(
                  width: 169.37,
                  height: 28.78,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 169.37,
                          height: 28.78,
                          decoration: ShapeDecoration(
                            color: Color(0xFF279E25),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30.57,
                        top: 7.39,
                        child: Container(
                          width: 105.34,
                          height: 14,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 18.34,
                                top: 0,
                                child: Text(
                                  'Currently Active',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 13.46,
                                  height: 14,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 5.05,
                                        top: 0,
                                        child: Text(
                                          'i',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 13.46,
                                          height: 13.46,
                                          decoration: ShapeDecoration(
                                            shape: OvalBorder(
                                              side: BorderSide(width: 1, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 282.92,
                top: 721.07,
                child: Container(
                  width: 55.96,
                  height: 55.96,
                  decoration: ShapeDecoration(
                    color: Color(0xFF389C9A),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}