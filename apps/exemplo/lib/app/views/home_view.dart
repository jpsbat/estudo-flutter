import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversão de Moedas'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ClipOval(
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRobZveG6RP0O4cQ0B5zT3qdhlwrxR5rpux1Kol-yoh0A&s=10', width: 200, height: 200, fit: BoxFit.cover),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      items:  
                        CurrencyModel.getCurrencies().map((currency) {
                          return DropdownMenuItem<String>(
                            value: currency.name,
                            child: Text(currency.name),
                          );
                        }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: DropdownButton<String>(
                      items:  
                        CurrencyModel.getCurrencies().map((currency) {
                          return DropdownMenuItem<String>(
                            value: currency.name,
                            child: Text(currency.name),
                          );
                        }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                ]
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Converter'),
            )
          ],
        )
      ),
    );
  }
}