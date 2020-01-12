import 'package:http/http.dart';

// Potrzebne do odkodowania JSONa (przekształcenia w obiekt)
import 'dart:convert';

class WorldTime {
  String location; // locaton name for the UI
  String time; // time in that location
  String flag; // url to asset flag icon
  String url; // location url for api endpoint

  // Constructor
  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {
    //    Przykłąd z JSON placeholder
    //    // Using of "http" package
    //    // "Response" object is from "http" package
    //    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    //    // dzieki Response dostaneisz body, wiec bedzie resposne.body
    //    print(response.body);
    //    // UWAGA! Pamiętaj, ze powyższce response.body, to nie ejst obiekt, tylko reprezentacja boiektuz a pomocą stringa,
    //    // dlatego jak zrobisz response.body.userId, to nie zadziała. JSON, to reprezentacja obiektu w postaci stringa
    //    // Więc trzeba tegos tringa przekształcić w obiekt, zeby z neigo korzystać
    //    // Poniżej to przekształcenie za pomocą jsonDecode
    //    // jsonDecode mozna uzyć DOPIERO po import 'dart:convert';
    //    Map data = jsonDecode(response.body); // To bedzie "Map" dlatego go używmay
    //    // teraz mozemy użyć np. userId
    //    print(data['userId']); // za pomocą [], pobieramy odpowiednie dane z Map


    // Poniżej już do aplikacji world_time
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    print(response);
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datatime'];
    String offset = data['utc_offset'].substring(1,3); // Użyjemy tylko pierwszych dwóch cyfr tzn(tam wycnianmy początkowego plusa lub minusa i bierzemy tylko dwie cyfry z początku, bo bedzie łątwiej późnej dodać).

    // Żeby otrzymać loklany czas musimy do "datetime" dodać "offset"
    // Ponieważ "datetime" i "offset" to stringi, musimy je najpierw zameinić na "date object" -> obiekt daty

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    // "add" to metoda na obiektach "Date", która pomoga dodać okręloną liczbę godzin do siebie
    now = now.add(Duration(hours: int.parse(offset))); // tu trzeba jeszce sparsować string offset

    // Set the time property
    time = now.toString();

  }

}
