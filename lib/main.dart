import 'package:PetApp/screens/drawer_screen.dart';
import 'package:PetApp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:PetApp/screens/Museum.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  static StatefulWidget current = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            current,
          ],
        ),
      ),
    );
  }
}

// class Homepage extends StatefulWidget {
//   const Homepage({Key key}) : super(key: key);
//   static StatefulWidget current = HomeScreen();

//   @override
//   _HomepageState createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             DrawerScreen(),
//             Homepage.current,
//           ],
//         ),
//       ),
//     );
//   }
// }
