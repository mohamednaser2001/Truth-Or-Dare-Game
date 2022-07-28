

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truth_or_dare_game/components/components.dart';
import 'package:truth_or_dare_game/components/constants.dart';
import 'package:truth_or_dare_game/modules/select_truth_or_dare.dart';

class AddPlayersScreen extends StatefulWidget {


  @override
  _AddPlayersScreenState createState() => _AddPlayersScreenState();
}

class _AddPlayersScreenState extends State<AddPlayersScreen> {

  var textController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  late String names = '';

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
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Add Players',
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
                TextFormField(
                  controller: textController,
                  decoration: InputDecoration(
                    fillColor: Colors.tealAccent,
                    border: OutlineInputBorder(),
                    labelText: 'Add Player',
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.person_add
                      ),
                      onPressed: (){
                        setState(() {
                          if(formKey.currentState!.validate()){
                            players.add(textController.text);
                            scores.add(0);
                            names= '$names \n ${textController.text}';
                            textController.text='';
                          }
                        });

                      },
                    ),
                  ),
                     validator: (value){
                       if(value!.isEmpty){
                         return 'Enter Player Name';
                       }
                       if(players.length>=5){
                         return 'Number of players must be less than 5';
                       }
                       return null;
                     },
                ),
                SizedBox(
                  height: 24.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.black12,
                    width: double.infinity,
                    child: Text(
                      '$names',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[300],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    text: 'PLAY',
                    color: Colors.green,
                    function: (){
                      if(players.length >=2){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return SelectTruthOrDare();
                          }),
                        );
                      }
                    }
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}