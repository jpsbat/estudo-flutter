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
      real: '1.00',
      dolar: '0.20',
      euro: '0.18',
      bitcoin: '0.000004',
    );
    homeController.fromCurrency = CurrencyModel(
      name: 'Dólar',
      real: '5.00',
      dolar: '1.00',
      euro: '0.90',
      bitcoin: '0.00002',
    );
    homeController.convert();
    expect(fromText.text, '1.00');
  });
  test('Deve converter de Dólar para Real', () {
    toText.text = '1.00';
    homeController.toCurrency = CurrencyModel(
      name: 'Dólar',
      real: '5.00',
      dolar: '1.00',
      euro: '0.90',
      bitcoin: '0.00002',
    );
    homeController.fromCurrency = CurrencyModel(
      name: 'Real',
      real: '1.00',
      dolar: '0.20',
      euro: '0.18',
      bitcoin: '0.000004',
    );
    homeController.convert();
    expect(fromText.text, '5.00');
  });
}
