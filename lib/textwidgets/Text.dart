import "package:flutter/material.dart";

class TitleText extends StatelessWidget {
  final String _title;

  TitleText(this._title);

  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
     margin: EdgeInsets.all(10),
     child: Text(
       _title,
       textAlign: TextAlign.center,
       style: TextStyle(
         fontSize: 18,
         color: Colors.black,
         decoration: TextDecoration.none
         ),
       )
     );
  }
}