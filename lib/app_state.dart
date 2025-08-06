import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _search = '';
  String get search => _search;
  set search(String value) {
    _search = value;
  }

  String _Airesponse = '';
  String get Airesponse => _Airesponse;
  set Airesponse(String value) {
    _Airesponse = value;
  }
}
