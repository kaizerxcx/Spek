import 'package:PetApp/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:PetApp/screens/top_detail.dart';
import 'package:PetApp/screens/drawer_screen.dart';

class Museum extends StatefulWidget {
  Museum({Key key}) : super(key: key);

  @override
  _MuseumState createState() => _MuseumState();
}

class _MuseumState extends State<Museum> {
  UnityWidgetController _unityWidgetController;

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded scene) {
    print('Received scene loaded from unity: ${scene.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }

  // Callback that connects the created controller to the unity controller
  void _onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryGreen,
        title: Text("Speak 3D Museum"),
      ),
      body: Center(
        child: UnityWidget(
          onUnityCreated: _onUnityCreated,
          onUnityMessage: onUnityMessage,
          onUnitySceneLoaded: onUnitySceneLoaded,
        ),
      ),
    );
  }
}
