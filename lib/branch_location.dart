import 'package:flutter/material.dart';

class BranchLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20),),
              child: Image.asset('assets/login-bg-drone.jpg', fit: BoxFit.fitWidth,),
            ),
          ],
        ),
      ),
    );
  }
}