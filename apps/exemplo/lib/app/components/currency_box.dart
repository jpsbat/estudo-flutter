import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox({
    Key? key,
    required this.items,
    required this.controller,
    required this.onChanged,
    required this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                isExpanded: true,
                value: selectedItem,
                items: items
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                    .toList(),
                onChanged: (CurrencyModel? value) {
                  if (value != null) onChanged(value);
                },
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Valor'),
            ),
          ),
        ],
      ),
    );
  }
}
