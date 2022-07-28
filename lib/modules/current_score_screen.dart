

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truth_or_dare_game/components/components.dart';
import 'package:truth_or_dare_game/components/constants.dart';
import 'package:truth_or_dare_game/modules/home_page.dart';
import 'package:truth_or_dare_game/modules/select_truth_or_dare.dart';

class CurrentScoreScreen extends StatelessWidget {

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Current Score',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Expanded(
                  child: Container(
                    height: 50.0,
                    child: ListView.separated(
                        itemBuilder:(context , index){
                          return scoreItem(name: players[index], score: scores[index]);
                        } ,
                        separatorBuilder:(context,index){
                          return SizedBox(height: 8,);
                        },
                        itemCount: players.length,                ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: defaultButton( 
                          text: 'CONTINUE',
                          color: Colors.green,
                        function: (){
                            index=0;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return SelectTruthOrDare();
                              })
                          );
                            print(scores);
                        }
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: defaultButton(
                          text: 'END GAME',
                          color: Colors.blue,
                          function: (){
                            index=0;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return MyHomePage();
                                })
                            );
                            print(scores);
                          }
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],

            ),
        ),
      ),
    );
  }
}