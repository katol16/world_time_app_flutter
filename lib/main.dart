import 'package:flutter/material.dart';

// Możemy zaimportować w poniższy sposób nasz plik, ale zastosujemy niżej konwencję taką jak powyżej z import 'package:flutter/material.dart';
// import 'pages/home.dart';

import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';
import 'package:world_time_app/pages/choose_location.dart';


void main() => runApp(MaterialApp(
  // wczesniej było tu home: Home(), ale to wywoła konflikt z routes i "/", bot am mamy ustawiony Loading(),
  // TUtaj narazie testowo ustaiwmy initialRoute, zeby nie bylo konfliktu, ale pozniej to zmienimy
  initialRoute: '/',

  // "context" to jest obiekt, któ©a śledzi gdzie w drzewie widgetow sie aktualnie znajdujemy
  routes: {
    // Na początku musimy wczytać dane dlatego damy "Loading".
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
