import 'package:flutter/material.dart';

class ShowMessage extends StatefulWidget {
  const ShowMessage({Key? key}) : super(key: key);

  @override
  State<ShowMessage> createState() => _ShowMessageState();
}

class _ShowMessageState extends State<ShowMessage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("title"),
            content: Text("body"),
            actions: <Widget>[
              Text("sssss"),
            ],
          );
        });
  }
}
