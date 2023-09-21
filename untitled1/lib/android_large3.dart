import 'package:flutter/material.dart';

class AndroidLarge3 extends StatelessWidget {
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
                        left: 287.45,
                        top: 724.43,
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
              ),
              Positioned(
                left: 96.09,
                top: 582.34,
                child: Container(
                  width: 178.14,
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
                            color: Color(0xFFFF0000),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30.96,
                        top: 7.39,
                        child: SizedBox(
                          width: 147.18,
                          child: Text(
                            'No movement detected',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15.40,
                        top: 7.93,
                        child: SizedBox(
                          width: 147.18,
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
                      ),
                      Positioned(
                        left: 10.35,
                        top: 7.93,
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
      ],
    );
  }
}