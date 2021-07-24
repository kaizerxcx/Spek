import 'package:PetApp/configuration.dart';
import 'package:PetApp/screens/Museum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PetApp/widgets/drawer_button.dart';
import 'package:PetApp/main.dart';
import 'package:PetApp/screens/home_screen.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  var button = ElevatedButton(
    onPressed: () {},
    child: Text("Hello"),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Juan Dela Cruz',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Active status',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                drawer_button(
                  iconData: CupertinoIcons.home,
                  label: 'Rescued Animals',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                drawer_button(
                  iconData: CupertinoIcons.envelope_open,
                  label: 'Donation',
                  onTap: () {
                    print("Donation");
                  },
                ),
                drawer_button(
                  iconData: CupertinoIcons.cube,
                  label: 'Spek 3D Museum',
                  onTap: () {
                    //HomePage.current = Museum();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Museum()),
                    );
                  },
                ),
                drawer_button(
                  iconData: CupertinoIcons.heart,
                  label: 'Favourites',
                  onTap: () {
                    print("Favourites");
                  },
                ),
                drawer_button(
                  iconData: CupertinoIcons.tray,
                  label: 'Messages',
                  onTap: () {
                    print("Messages");
                  },
                ),
                drawer_button(
                  iconData: CupertinoIcons.person,
                  label: 'Profile',
                  onTap: () {
                    print("Profile");
                  },
                ),
              ],
              // children: drawerItems
              //     .map(
              //       (e) => Padding(
              //         padding: const EdgeInsets.symmetric(
              //           vertical: 14,
              //         ),
              //         child: Row(
              //           children: [
              //             Icon(
              //               e['icon'],
              //               color: Colors.white60,
              //               size: 24,
              //             ),
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Text(
              //               e['title'],
              //               style: TextStyle(
              //                 color: Colors.white60,
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     )
              //     .toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.gear_alt,
                  color: Colors.white60,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.white60,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
