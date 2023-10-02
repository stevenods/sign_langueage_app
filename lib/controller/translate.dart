import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:speech_to_text/speech_to_text.dart';

class TranslaterController extends GetxController {
  TextEditingController textt = TextEditingController();

  var isListerning = 0.obs;
  List charList = [].obs;
  List showsigns = [].obs;
  List charLista = [].obs;
  List showsignsa = [].obs;
  var text = "".obs;
  var texta = "".obs;
  static const List<Map<String, String>> handsignsMap = [
    {'A': 'assets/images/topics/alphabets/A.png'},
    {'B': 'assets/images/topics/alphabets/B.png'},
    {'C': 'assets/images/topics/alphabets/C.png'},
    {'D': 'assets/images/topics/alphabets/D.png'},
    {'E': 'assets/images/topics/alphabets/E.png'},
    {'F': 'assets/images/topics/alphabets/F.png'},
    {'G': 'assets/images/topics/alphabets/G.png'},
    {'H': 'assets/images/topics/alphabets/H.png'},
    {'I': 'assets/images/topics/alphabets/I.png'},
    {'J': 'assets/images/topics/alphabets/J.png'},
    {'K': 'assets/images/topics/alphabets/K.png'},
    {'L': 'assets/images/topics/alphabets/L.png'},
    {'M': 'assets/images/topics/alphabets/M.png'},
    {'N': 'assets/images/topics/alphabets/N.png'},
    {'O': 'assets/images/topics/alphabets/O.png'},
    {'P': 'assets/images/topics/alphabets/P.png'},
    {'Q': 'assets/images/topics/alphabets/Q.png'},
    {'R': 'assets/images/topics/alphabets/R.png'},
    {'S': 'assets/images/topics/alphabets/S.png'},
    {'T': 'assets/images/topics/alphabets/T.png'},
    {'U': 'assets/images/topics/alphabets/U.png'},
    {'V': 'assets/images/topics/alphabets/V.png'},
    {'W': 'assets/images/topics/alphabets/W.png'},
    {'X': 'assets/images/topics/alphabets/X.png'},
    {'Y': 'assets/images/topics/alphabets/Y.png'},
    {'Z': 'assets/images/topics/alphabets/Z.png'},
    {' ': 'assets/signlanguage/space.jpg'},
    {'0': 'assets/signlanguage/numbers/0.jpg'},
    {'1': 'assets/signlanguage/numbers/1.jpg'},
    {'2': 'assets/signlanguage/numbers/2.jpg'},
    {'3': 'assets/signlanguage/numbers/3.jpg'},
    {'4': 'assets/signlanguage/numbers/4.jpg'},
    {'5': 'assets/signlanguage/numbers/5.jpg'},
    {'6': 'assets/signlanguage/numbers/6.jpg'},
    {'7': 'assets/signlanguage/numbers/7.jpg'},
    {'8': 'assets/signlanguage/numbers/8.jpg'},
    {'9': 'assets/signlanguage/numbers/9.jpg'},
  ];

  // SpeechToText speechToText = SpeechToText();

  // ignore: non_constant_identifier_names
  void TranslateToSign() {
    charList = text.split('').toList(); // [H, e, l, l, o,  , W, o, r, l, d]
    showsigns = List.filled(charList.length, null);
    for (int i = 0; i < charList.length; i++) {
      showsigns[i] = handsignsMap
          .where((element) =>
              element.containsKey(charList[i].toString().toUpperCase()))
          .first;
    }
    //print(showsigns.length);
    update();
  }

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
  WrittenMessage() {
    if (textt.text.isEmpty) {
      Get.snackbar("Alert", "Please Enter a Message");
    }
    text.value = textt.text;
    TranslateToSign();
  }

  // ignore: non_constant_identifier_names
  ShowAll() {
    texta.value = "abcdefghijklmnopqrstuvwxyz0123456789";
    ShowAllAlphabets();
  }

  // ignore: non_constant_identifier_names
  /*ListernToUser() async {
    if (isListerning.value == 0) {
      var avalable = await speechToText.initialize();
      if (avalable) {
        isListerning.value = 1;
        speechToText.listen(
          onResult: (result) {
            textt.text = result.recognizedWords;
            text.value = result.recognizedWords;
          },
        );
      }
    }
  }

  stopListerning() {
    isListerning.value = 0;
    speechToText.stop();
    if (text.value == "") {
      Get.snackbar("Alert", "Could not hear you, Please Try Again");
    }
    TranslateToSign();
  }*/
}
