import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modals/jsonmodal.dart';

class JSONController extends ChangeNotifier {
  List<JSONModal> alldata = [];

  JSONController() {
    init();
  }

  init() async {
    String data = await rootBundle.loadString("assets/json.json");
    List tmp = jsonDecode(data);
    alldata = tmp
        .map(
          (e) => JSONModal(
            body: e['body'],
            title: e['title'],
            id: e['id'],
            userId: e['userId'],
          ),
        )
        .toList();
  }
}
