//import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:speech_to_text/speech_to_text.dart';

class WordsController extends GetxController {
  List charLista = [].obs;
  List showsignsa = [].obs;
  var texta = "".obs;
  static const List<Map<String, String>> handsignsMap = [
    {'A': 'assets/images/topics/words/family.png'},
    {'B': 'assets/images/topics/words/goodbye.png'},
    {'C': 'assets/images/topics/words/hello.png'},
    {'D': 'assets/images/topics/words/house.png'},
    {'E': 'assets/images/topics/words/love.png'},
    {'F': 'assets/images/topics/words/no.png'},
    {'G': 'assets/images/topics/words/please.png'},
    {'H': 'assets/images/topics/words/thank_you.png'},
    {'I': 'assets/images/topics/words/welcome.png'},
    {'J': 'assets/images/topics/words/yes.png'},
  ];

  // SpeechToText speechToText = SpeechToText();

  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  void ShowAllAlphabets() {
    charLista =
        texta.split('').toList(); //['abcdefghijklmnopqrstuvwxyz 0123456789'];
    showsignsa = List.filled(charLista.length, null);
    for (int i = 0; i < charLista.length; i++) {
      showsignsa[i] = handsignsMap
          .where(
            (element) => element.containsKey(
              charLista[i].toString().toUpperCase(),
            ),
          )
          .first;
    }
    //print(showsignsa.length);
    update();
  }

  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  ShowAll() {
    texta.value = "abcdefghij";
    ShowAllAlphabets();
  }
}
