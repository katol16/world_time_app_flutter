import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ten widget SafeArea, spwowoduje, ze nasz tekst poakze się w widocznym miejscu i nie bedzie zasłonięty rpzez górny pasek telefonu gdzie masz np. godizne i stan baterii
      body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  // pushing to another route
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit lcoation'),
              ),
            ],
          ),
      ),
    );
  }
}
