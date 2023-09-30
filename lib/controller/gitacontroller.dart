import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modals/geetamodal.dart';

class gitacontroller extends ChangeNotifier {
  List<gitamodal> allverse = [];
  List<gitamodal2> allverse2 = [];
  String lan2 = "hindi";
  String author_name = "Swami Ramsukhdas";

  gitacontroller() {
    init();
  }

  init() async {
    String data = await rootBundle.loadString("assets/json/gita.json");
    String data2 = await rootBundle.loadString("assets/json/gitapath.json");
    List demo1 = jsonDecode(data);
    List demo2 = jsonDecode(data2);
    allverse = demo1.map((e) => gitamodal.fromMap(data: e)).toList();
    debugPrint("--------------------------------");
    allverse2 = demo2.map((e) => gitamodal2.fromMap(data: e)).toList();
    debugPrint("--------------------------------");
    notifyListeners();
  }

  changeLanguage({required String lan, required String author}) {
    lan2 = lan;
    author_name = author;
    notifyListeners();
  }
}
