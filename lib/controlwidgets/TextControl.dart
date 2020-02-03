import "package:flutter/material.dart";

class TextControl extends StatelessWidget {
  final String _title;
  final Function _onClickListener;
  
  TextControl(this._title, this._onClickListener);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(_title),
        onPressed: _onClickListener,
        color: Colors.lightBlue,
        textColor: Colors.white,
      ),
    );
  }
}