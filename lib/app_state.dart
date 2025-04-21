import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _emailSignIn = prefs.getString('ff_emailSignIn') ?? _emailSignIn;
    });
    _safeInit(() {
      _categorias = prefs.getString('ff_categorias') ?? _categorias;
    });
    _safeInit(() {
      _precioTotal = prefs.getDouble('ff_precioTotal') ?? _precioTotal;
    });
    _safeInit(() {
      _granTotal = prefs.getDouble('ff_granTotal') ?? _granTotal;
    });
    _safeInit(() {
      _totalProductos = prefs.getInt('ff_totalProductos') ?? _totalProductos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _emailSignIn = '';
  String get emailSignIn => _emailSignIn;
  set emailSignIn(String value) {
    _emailSignIn = value;
    prefs.setString('ff_emailSignIn', value);
  }

  bool _home = false;
  bool get home => _home;
  set home(bool value) {
    _home = value;
  }

  bool _orders = false;
  bool get orders => _orders;
  set orders(bool value) {
    _orders = value;
  }

  bool _profile = false;
  bool get profile => _profile;
  set profile(bool value) {
    _profile = value;
  }

  bool _cart = false;
  bool get cart => _cart;
  set cart(bool value) {
    _cart = value;
  }

  String _categorias = '';
  String get categorias => _categorias;
  set categorias(String value) {
    _categorias = value;
    prefs.setString('ff_categorias', value);
  }

  double _precioTotal = 0.0;
  double get precioTotal => _precioTotal;
  set precioTotal(double value) {
    _precioTotal = value;
    prefs.setDouble('ff_precioTotal', value);
  }

  double _granTotal = 0.0;
  double get granTotal => _granTotal;
  set granTotal(double value) {
    _granTotal = value;
    prefs.setDouble('ff_granTotal', value);
  }

  int _totalProductos = 0;
  int get totalProductos => _totalProductos;
  set totalProductos(int value) {
    _totalProductos = value;
    prefs.setInt('ff_totalProductos', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
