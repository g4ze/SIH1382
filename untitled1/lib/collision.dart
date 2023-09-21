import 'package:flutter/material.dart';


class CollisionAvoidanceOff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 68,
                top: 400,
                child: Container(
                  width: 225,
                  height: 225,
                  decoration: ShapeDecoration(
                    color: Color(0x66389C9A),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 25,
                        offset: Offset(0, 4),
                        spreadRadius: 6,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 62,
                child: Text(
                  'Collision\nAvoidance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.03,
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 451,
                child: Container(
                  width: 119,
                  height: 119,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 119,
                          height: 119,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/119x119"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 153,
                top: 697,
                child: Text(
                  'OFF',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.04,
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