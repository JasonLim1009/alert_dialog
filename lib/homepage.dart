import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blueAccent[100],
            title: Text('Title'),
            content: Text('Content, more info'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text('Ok'),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Center(
        child: MaterialButton(
          color: Colors.redAccent[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Show DIALOG',
              style: TextStyle(
                  fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}


