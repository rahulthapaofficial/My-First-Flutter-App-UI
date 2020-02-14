import 'package:flutter/material.dart';

class QuickButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        color: Colors.deepPurple[900],
                        size: 40,
                      ),
                      Text("Help",
                        style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        color: Colors.deepPurple[900],
                        size: 40,
                      ),
                      Text("Help",
                        style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        color: Colors.deepPurple[900],
                        size: 40,
                      ),
                      Text("Help",
                        style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        color: Colors.deepPurple[900],
                        size: 40,
                      ),
                      Text("Help",
                        style: TextStyle(
                          color: Colors.deepPurple[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}