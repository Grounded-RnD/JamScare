import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF342E37),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 60, bottom: 60),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 375,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color(0xFF3C91E6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.person_outline_rounded,
                              color: Colors.black12,
                              size: 116,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 375,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color(0xFF9FD356),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'Devices',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.interests_outlined,
                              color: Colors.black12,
                              size: 116,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 375,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color(0xFFFA824C),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'GPS Mode',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.black12,
                              size: 116,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(230, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: Color(0xFFFA824C),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          )))
                ],
              ),
            ),
          ),
        ));
  }
}
