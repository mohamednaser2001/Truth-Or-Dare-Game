import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton(
{
  required String text,
  required Color color,
   Function ? function,
}
    ) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: color,
  ),
  child: MaterialButton(
      minWidth: double.infinity,
      padding: EdgeInsets.all(14.0),
      elevation: 26.0,
      child: Text(
        '$text',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      onPressed:(){
        function!();
      }
  ),

);



Widget scoreItem({
  required String name ,
  required int score
}) => Container(
  height: 50.0,
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  color: Colors.black12,
  width: double.infinity,
  child: Row(
    children: [
      Expanded(
        child: Text(
          '$name',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[300],
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      Text(
        '${score.toString()}',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey[300],
          fontStyle: FontStyle.italic,
        ),
      ),
    ],
  ),
);