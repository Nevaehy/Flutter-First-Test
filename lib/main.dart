// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import "package:flutter/material.dart";

import "textwidgets/Text.dart";
import "controlwidgets/TextControl.dart";

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  var stateIndex = 0;
  var testingIndex = 0;

  var buttonTexts = [
    "Complete testing",
    "Restart testing"
  ];

  var titleTexts = [
    "Testing in progress...",
    "Testing completed"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test App")
        ),
        body: Column(
          children: <Widget>[
            TitleText(titleTexts.elementAt(stateIndex)),
            TextControl(buttonTexts.elementAt(stateIndex), onButtonClick)
          ],
        )
      )
    );
  }

  void onButtonClick() {
    setState(() {
      stateIndex = stateIndex > 0 ? 0 : 1;
    });
  }
}