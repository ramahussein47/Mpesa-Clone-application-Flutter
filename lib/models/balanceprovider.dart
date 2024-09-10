import 'package:flutter/material.dart';
// Provider for managing the current balance and Fuliza

class BalanceProvider with ChangeNotifier {
  double _balance = 0.0;
  double _fuliza = 19.64;

  double get balance => _balance;
  double get fuliza => _fuliza;

  void updateBalance(double newBalance) {
    _balance = newBalance;
    notifyListeners();
  }

  void updateFuliza(double newFuliza) {
    _fuliza = newFuliza;
    notifyListeners();
  }
}
