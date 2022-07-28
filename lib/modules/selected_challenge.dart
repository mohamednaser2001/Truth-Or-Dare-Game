import 'package:flutter/material.dart';
import 'package:truth_or_dare_game/components/components.dart';
import 'package:truth_or_dare_game/components/constants.dart';
import 'package:truth_or_dare_game/modules/select_truth_or_dare.dart';

import 'current_score_screen.dart';

class SelectedChallenge extends StatelessWidget {

  String type;
  int i;
  SelectedChallenge({required this.type,required this.i});


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
                '$type',
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
                  alignment: AlignmentDirectional.center,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  color: Colors.black12,
                  width: double.infinity,
                  child: Text(
                        '${type=='Truth'?truth[i] :dare[i]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[300],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: defaultButton(
                        text: 'COMPLETE',
                        color: Colors.green,
                        function: (){                      //if the index < last element go back to truth or dare screen
                          scores[index]++;
                          if(index<(players.length-1)){
                            index++;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return SelectTruthOrDare();
                                })
                            );
                          }
                          else if(index==players.length-1){        //if the index == last element go to score screen
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return CurrentScoreScreen();
                                })
                            );
                          }
                        }
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: defaultButton(
                        text: 'FORFEIT',
                        color: Colors.blue,
                        function: (){                      //if the index < last element go back to truth or dare screen
                          if(index<(players.length-1)){
                            index++;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return SelectTruthOrDare();
                                })
                            );
                          }
                          else if(index==players.length-1){        //if the index == last element go to score screen
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return CurrentScoreScreen();
                                })
                            );
                          }
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