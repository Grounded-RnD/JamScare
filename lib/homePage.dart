import 'package:flutter/material.dart';
import 'dart:math' as math;

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF342E37),
        body: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Center(
              child: Image(image: AssetImage('images/logo.png')),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(300, 200),
                    painter: HalfCirclePainter(data: 10),
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: CustomPaint(
                      size: Size(200, 100),
                      painter: CustomHalfCirclePainter(
                        data: 50,
                        backgroundColor: Color.fromARGB(
                            52, 163, 78, 142), // Contoh warna background
                        dataColor: Color(
                            0xFF9FD356), // Contoh warna data (lingkaran utama)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 100,
                    child: CustomPaint(
                      size: Size(100, 50),
                      painter: CustomHalfCirclePainter2(
                          data: 20,
                          backgroundColor: Color.fromARGB(52, 163, 78, 142),
                          dataColor: Color(0xFFFA824C)),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3C91E6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sleep',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFA824C),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Heart',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9FD356),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Steps',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(52, 163, 78, 142),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Heart Rate',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '60 BPM',
                              style: TextStyle(
                                  color: Color(0xFFFA824C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(52, 163, 78, 142),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Device',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Connected',
                              style: TextStyle(
                                  color: Color(0xFF9FD356),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '80%',
                              style: TextStyle(
                                  color: Color(0xFF9FD356),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.battery_6_bar_rounded,
                              color: Color(0xFF9FD356),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 375,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(52, 163, 78, 142),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Panic Button',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 144,
                            ),
                            Icon(Icons.warning_amber, color: Color(0xFFFA824C)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(230, 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  backgroundColor: Color(0xFFFA824C),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Get Help',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class AnimatedHalfCircle extends StatefulWidget {
  final double data;

  const AnimatedHalfCircle({Key? key, required this.data}) : super(key: key);

  @override
  _AnimatedHalfCircleState createState() => _AnimatedHalfCircleState();
}

class _AnimatedHalfCircleState extends State<AnimatedHalfCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 100).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCirclePainter(data: _animation.value),
      child: Container(height: 200.0),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  final double data;

  HalfCirclePainter({required this.data});

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 28;
    Paint backgroundPaint = Paint()
      ..color = Color.fromARGB(52, 163, 78, 142)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint dataPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double radius = size.width / 2;
    double sweepAngle = (data / 100) * math.pi;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      math.pi,
      math.pi,
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      math.pi,
      sweepAngle,
      false,
      dataPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class CustomHalfCirclePainter extends CustomPainter {
  final double data;
  final Color backgroundColor;
  final Color dataColor;

  CustomHalfCirclePainter({
    required this.data,
    required this.backgroundColor,
    required this.dataColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 28;

    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint dataPaint = Paint()
      ..color = dataColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double radius = size.width / 2;
    double sweepAngle = (data / 100) * -3.14;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      3.14, // Start angle for the background arc (right side)
      3.14, // Sweep angle for the background arc
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      0, // Start angle for the data arc (left side)
      sweepAngle, // Sweep angle for the data arc
      false,
      dataPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class CustomHalfCirclePainter2 extends CustomPainter {
  final double data;
  final Color backgroundColor;
  final Color dataColor;

  CustomHalfCirclePainter2({
    required this.data,
    required this.backgroundColor,
    required this.dataColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 28;

    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint dataPaint = Paint()
      ..color = dataColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double radius = size.width / 2;
    double sweepAngle = (data / 100) * 3.14;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      3.14,
      3.14,
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      3.14,
      sweepAngle,
      false,
      dataPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
