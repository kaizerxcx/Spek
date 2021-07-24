import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class drawer_button extends StatelessWidget {
  var onTap;
  String label;
  IconData iconData;
  drawer_button({this.onTap, this.label, this.iconData});

  @override
  Widget build(BuildContext buildContext) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 14,
              ),
              child: Row(
                children: [
                  Icon(
                    iconData,
                    color: Colors.white60,
                    size: 24,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
