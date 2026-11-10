class CurrencyModel {
  final String name;
  final double inReal;
  
  CurrencyModel({
    required this.name,
    required this.inReal,
  });

  static List<CurrencyModel> getCurrencies() {
    return [
      CurrencyModel(
        name: 'Real',
        inReal: 1.00,
      ),
      CurrencyModel(
        name: 'Dólar',
        inReal: 5.00,
      ),
      CurrencyModel(
        name: 'Euro',
        inReal: 5.50,
      ),
      CurrencyModel(
        name: 'Bitcoin',
        inReal: 250000.00,
      ),
    ];
  }
}