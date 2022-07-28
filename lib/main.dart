import 'package:flutter/material.dart';

import 'modules/add_players_screen.dart';
import 'modules/current_score_screen.dart';
import 'modules/home_page.dart';
import 'modules/select_truth_or_dare.dart';
import 'modules/selected_challenge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


