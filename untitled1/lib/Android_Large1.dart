import 'package:flutter/material.dart';


class AndroidLarge1 extends StatelessWidget {
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
                top: 379.55,
                child: Container(
                  width: 360,
                  height: 441.96,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.25),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 28.91,
                top: 242.08,
                child: Container(
                  width: 302.18,
                  height: 252.96,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.25,
                        color: Colors.black.withOpacity(0.6000000238418579),
                      ),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(1, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 53.58,
                top: 316.80,
                child: Container(
                  width: 252.83,
                  height: 36.98,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF389C9A)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 369,
                child: Container(
                  width: 252.83,
                  height: 36.98,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF389C9A)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 65.63,
                top: 327.79,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.30000001192092896),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 96,
                top: 269.05,
                child: Text(
                  'Bus Driver Portal',
                  style: TextStyle(
                    color: Color(0xFF389C9A),
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 66.57,
                top: 379.55,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.30000001192092896),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 127.49,
                top: 427.29,
                child: Container(
                  width: 105.02,
                  height: 28.78,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 105.02,
                          height: 28.78,
                          decoration: ShapeDecoration(
                            color: Color(0xFF389C9A),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34.01,
                        top: 7.39,
                        child: Text(
                          'SIgn in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 107,
                top: 705.15,
                child: Text(
                  'App name',
                  style: TextStyle(
                    color: Color(0xFF389C9A),
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
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