import 'package:flutter/material.dart';


class Complain extends StatelessWidget {
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
                left: 274,
                top: 25,
                child: Container(
                  width: 61,
                  height: 61,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/61x61"),
                      fit: BoxFit.cover,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 41,
                child: Text(
                  'Milkha S.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 48,
                child: Container(
                  width: 26,
                  height: 16,

                ),
              ),
              Positioned(
                left: 25,
                top: 144,
                child: Text(
                  'Complain',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 219,
                child: SizedBox(
                  width: 310,
                  child: Text(
                    'We apologise for the inconvenience. Please explain your issue via text or audio',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 393,
                child: SizedBox(
                  width: 310,
                  child: Text(
                    'Attachments (optional)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 313,
                child: Container(
                  width: 302,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 138,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFEDB71),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 164,
                        top: 0,
                        child: Container(
                          width: 138,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFEDB71),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 57,
                        top: 13,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                          ),
                        ),
                      ),
                      Positioned(
                        left: 221,
                        top: 13,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 441,
                child: Container(
                  width: 310,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFEDB71),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 131,
                top: 454,
                child: Text(
                  'Upload File',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 705,
                child: Container(
                  width: 310,
                  height: 70,
                  decoration: ShapeDecoration(
                    color: Color(0xFF389C9A),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 125,
                top: 720,
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
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