

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truth_or_dare_game/components/components.dart';
import 'package:truth_or_dare_game/components/constants.dart';
import 'package:truth_or_dare_game/modules/selected_challenge.dart';

class SelectTruthOrDare extends StatelessWidget {


  // SelectTruthOrDare({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.pink,
                  Colors.deepOrange,
                ],
              )
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${players[index]}\' turn',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 150.0,
              ),
              defaultButton(
                text: 'TRUTH',
                color: Colors.green,
                function: (){
                  Random random =  new Random();
                  var randomNumber = random.nextInt(150);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return SelectedChallenge( type: 'Truth',i:randomNumber);
                  })
                  );
                }
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                'Or',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              defaultButton(
                text: 'DARE',
                color: Colors.amberAccent,
                  function: (){
                    Random random =  new Random();
                    var randomNumber = random.nextInt(70);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return SelectedChallenge( type: 'Dare',i:randomNumber);
                        })
                    );
                  }
              ),
              SizedBox(
                height: 90.0,
              ),

            ],

          ),
        ),
      ),
    );
  }



}