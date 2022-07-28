

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:truth_or_dare_game/components/components.dart';
import 'package:truth_or_dare_game/components/constants.dart';
import 'add_players_screen.dart';

class MyHomePage extends StatelessWidget {


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
                        'Game Mode',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 120.0,
                      ),
                      defaultButton(
                        text: 'KIDS',
                        color: Colors.green,
                        function: (){
                          players.clear();
                          scores.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return AddPlayersScreen();
                                },
                            ),
                          );
                        }
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      defaultButton(
                        text: 'TEEN',
                        color: Colors.amberAccent,
                        function: (){
                          players.clear();
                          scores.clear();
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return AddPlayersScreen();
                            }),
                          );

                        }
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      defaultButton(
                        text: 'ADULT',
                        color: Colors.blue,
                        function: (){
                          players.clear();
                          scores.clear();
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return AddPlayersScreen();
                            }),
                          );
                        }
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      defaultButton(
                        text: 'COUPLES',
                        color: Colors.deepPurpleAccent,
                        function: (){
                          players.clear();
                          scores.clear();
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return AddPlayersScreen();
                            }),
                          );
                        }
                      ),
                      SizedBox(
                        height: 70.0,
                      ),

                    ],

                  ),
                ),
              ),
            );
  }



}