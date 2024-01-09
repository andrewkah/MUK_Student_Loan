// This one can translate 5000 characters in a go as compared to Sun bird.

import 'package:google_translate/google_translate.dart';

class TranslateToLuganda {

  static Future<String> translateToLuganda(String textToTranslate) async {
    var translatedText = "";
    textToTranslate.translate().then((value) {
              translatedText = value;
            }
    );
    return translatedText;
  }


}