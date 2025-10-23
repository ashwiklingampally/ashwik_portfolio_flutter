import 'package:ashwik_dev/ui/home/data/form_obj.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Controller {
  final void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbxteA9lx8BeKxHsUFQqtD-C6nloG-g2rAqf7ZfjhK2hrxfHN10b0A6ef0e3lBE5akv87Q/exec";
  static const STATUS_SUCCESS = "SUCCESS";

  Controller(this.callback);

  void submitForm(FormObj form) async {
    try {
      await http.get(Uri.parse(URL + form.toParams())).then((response) {
        callback(convert.jsonDecode(response.body)["status"]);
      });
    } catch (e) {
      print(e);
    }
  }
}
