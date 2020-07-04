/*
*  main.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/welcome_widget/welcome_widget.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: WelcomeWidget(),
    );
  }
}