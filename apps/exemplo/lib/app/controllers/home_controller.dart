import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController(this.toText, this.fromText) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 0.0;
    double returnValue = 0.0;

    if(fromCurrency.name == 'Real') {
      returnValue = value * double.parse(toCurrency.real.toString());
    } else if (fromCurrency.name == 'Dólar') {
      returnValue = value / double.parse(toCurrency.dolar.toString());
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value / double.parse(toCurrency.euro.toString());
    }
    else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value / double.parse(toCurrency.bitcoin.toString());
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
