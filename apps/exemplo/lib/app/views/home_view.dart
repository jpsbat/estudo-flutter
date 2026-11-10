import 'package:flutter/material.dart';

import '../components/currency_box.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  late final HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conversão de Moedas')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRobZveG6RP0O4cQ0B5zT3qdhlwrxR5rpux1Kol-yoh0A&s=10',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              CurrencyBox(selectedItem: homeController.toCurrency, items: homeController.currencies, controller: toText, onChanged: (model) {setState(() {
                homeController.toCurrency = model;
              });}),
              CurrencyBox(selectedItem: homeController.fromCurrency, items: homeController.currencies, controller: fromText, onChanged: (model) {setState(() {
                homeController.fromCurrency = model;
              });}),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    homeController.convert();
                  },
                  child: const Text('CONVERTER'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
