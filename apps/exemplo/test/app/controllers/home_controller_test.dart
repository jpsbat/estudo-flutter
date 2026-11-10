import 'package:exemplo/app/controllers/home_controller.dart';
import 'package:exemplo/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText, fromText);

  test('Deve converter de Real para Dólar', () {
    toText.text = '5.00';
    homeController.toCurrency = CurrencyModel(
      name: 'Real',
      inReal: 1.00,
    );
    homeController.fromCurrency = CurrencyModel(
      name: 'Dólar',
      inReal: 5.00,
    );
    homeController.convert();
    expect(fromText.text, '1.00');
  });
  test('Deve converter de Dólar para Real', () {
    toText.text = '1.00';
    homeController.toCurrency = CurrencyModel(
      name: 'Dólar',
      inReal: 5.00,
    );
    homeController.fromCurrency = CurrencyModel(
      name: 'Real',
      inReal: 1.00,
    );
    homeController.convert();
    expect(fromText.text, '5.00');
  });
}
