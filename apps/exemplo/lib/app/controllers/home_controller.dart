import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  final TextEditingController toText;
  final TextEditingController fromText;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController(this.toText, this.fromText);

  Future<void> loadCurrencies() async {
    final url = Uri.parse(
      'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL',
    );
    final response = await http.get(url);
    final data = jsonDecode(response.body);

    currencies = [
      CurrencyModel(name: 'Real', inReal: double.parse('1.00')),
      CurrencyModel(name: 'Dólar', inReal: double.parse(data['USDBRL']['bid'])),
      CurrencyModel(name: 'Euro', inReal: double.parse(data['EURBRL']['bid'])),
      CurrencyModel(name: 'Bitcoin', inReal: double.parse(data['BTCBRL']['bid'])),
    ];

    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    final value = double.tryParse(toText.text) ?? 0.0;

    final emReais = value * toCurrency.inReal;
    final resultado = emReais / fromCurrency.inReal;

    fromText.text = resultado.toStringAsFixed(2);
  }
}
