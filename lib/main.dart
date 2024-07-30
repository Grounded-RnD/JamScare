import 'package:flutter/material.dart';
import 'package:jamscare/Track.dart';
import 'package:jamscare/akun.dart';
import 'package:jamscare/homePage.dart';
import 'Track.dart';
import 'akun.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

enum ThemeStyle {
  Dribbble,
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF6E45E3, {
          50: Color(0xFFE8E2F7),
          100: Color(0xFFCDB8E9),
          200: Color(0xFFB18DDA),
          300: Color(0xFF9552CB),
          400: Color(0xFF7A27BC),
          500: Color(0xFF6E45E3),
          600: Color(0xFF5A3AB0),
          700: Color(0xFF462F7D),
          800: Color(0xFF32254A),
          900: Color(0xFF1E1A17),
        }),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  ThemeStyle _currentStyle = ThemeStyle.Dribbble;

  List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  List<Widget> index = [home_page(), Track(), Akun()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      backgroundColor: Colors.white,
      body: index[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    switch (_currentStyle) {
      case ThemeStyle.Dribbble:
        return _buildOriginDesign();
      default:
        return _buildOriginDesign();
    }
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xFFFA824C),
      strokeColor: Colors.white,
      unSelectedColor: Colors.white,
      backgroundColor: const Color(0xFF342E37),
      items: [
        CustomNavigationBarItem(
            icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home)),
        CustomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            selectedIcon: Icon(Icons.location_on)),
        CustomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            selectedIcon: Icon(Icons.account_circle)),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
