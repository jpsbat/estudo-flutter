class CurrencyModel {
  final String name;
  final String real;
  final String dolar;
  final String euro;
  final String bitcoin;
  
  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return [
      CurrencyModel(
        name: 'Real',
        real: '1.00',
        dolar: '0.20',
        euro: '0.18',
        bitcoin: '0.000004',
      ),
      CurrencyModel(
        name: 'Dólar',
        real: '5.00',
        dolar: '1.00',
        euro: '0.90',
        bitcoin: '0.00002',
      ),
      CurrencyModel(
        name: 'Euro',
        real: '5.50',
        dolar: '1.10',
        euro: '1.00',
        bitcoin: '0.000022',
      ),
      CurrencyModel(
        name: 'Bitcoin',
        real: '250000.00',
        dolar: '50000.00',
        euro: '45000.00',
        bitcoin: '1.00',
      ),
    ];
  }
}