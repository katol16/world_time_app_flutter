import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // Ten Kod z przyciskiem i counterem jest tylko dla przykładu
//  int counter = 0;
//
//  // to @override jest potrzebne, zeby nadpisać funkcję initState(), którą dziedziczymy z tej state class: State<ChooseLocation>z
//  @override
//  void initState() {
//    // to super poniżej oznacza, żeby napdisać naszą orginalną funkcję, daltego poniżej po super.initState() damy to co będzie się działo w naszej funckji
//    super.initState();
//    print('iniState function ran, odpali sie jako pierwsze');
//  }

  // Simulated ASYNCHRONOUS request
  // UWAGA! Poni
//  void getData() {
//    // simulate network request for a username that is way we are ussing "delayed"
//    // Future is a type of data similar to Promise in JS
//    // delayed przyjmuje dwa parametry, pierwszy to czas opoznienia, a drugi to funckja, ktora sie wykona po opznieniu
//    Future.delayed(Duration(seconds: 3), () {
//      // Here is callback function which is fired after 3seconds
//      print('Karol');
//    });
//
//    // Simulated bio
//    Future.delayed(Duration(seconds: 2), () {
//      // Here is callback function which is fired after 3seconds
//      print(' to zajebisty programista');
//    });
//
//    print('Tekst poza requestami, ktore są asynchroniczne, wiec pokaze sie jako pierwszy, bo one maja opoznienia, tak jak wzykle maja requesty');
//
//    // KOLEJNOŚĆ WYŚWIETLANIA:
//    // "Tekst poza requestami, ktore są asynchroniczne, wiec pokaze sie jako pierwszy, bo one maja opoznienia, tak jak wzykle maja requesty
//    // "Build function ran, odpali sie jako drugie" -> to się wyświetli, bo pamietaj, ze kod jest asynchroniczny, wiec bedzie się wykonywał w innym scopie!
//    // "to zajebisty programista"
//    // "Karol"
//  }

  // Simulated ASYNCHRONOUS request with async await (Często używane)
  // Powiedmzy, ze chcemy poczekać na dane z requesta wtedy użyjemy async await
//  void getData() async {
//    // simulate network request for a username that is way we are ussing "delayed"
//    // Future is a type of data similar to Promise in JS
//    // delayed przyjmuje dwa parametry, pierwszy to czas opoznienia, a drugi to funckja, ktora sie wykona po opznieniu
//    // przechowamy username w zmiennej
//    String username = await Future.delayed(Duration(seconds: 3), () {
//      // Here is callback function which is fired after 3seconds
//      return "Karol";
//    });
//
//    // Simulated bio -> przechowamy to w zmiennej
//    String bio = await Future.delayed(Duration(seconds: 2), () {
//      // Here is callback function which is fired after 3seconds
//      return ' to zajebisty programista';
//    });
//
//    print('$username - $bio');
//
//    // KOLEJNOŚĆ WYŚWIETLANIA:
//    // "Build function ran, odpali sie jako drugie" -> to się wyświetli, bo pamietaj, ze kod jest asynchroniczny, wiec bedzie się wykonywał w innym scopie!
//    // "Karol to zajebisty programista"
//  }
//
//
//  @override
//  void initState() {
//    super.initState();
//    getData();
//  }

  @override
  Widget build(BuildContext context) {
    print('Build function ran, odpali sie jako drugie');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body:
// Ten Kod z przyciskiem i counterem jest tylko dla przykładu
//      RaisedButton(
//        onPressed: () {
//          setState(() {
//            counter += 1;
//            // Po odpaleniu tej funckji odpai się też build czyli też odpali sie nasz print z tekstem "Build function ran, odpali sie jako drugie". Masz tego printa wżej
//          });
//        },
//        child: Text('counter is $counter'),
//      ),
        Text('Test'),
    );
  }
}
