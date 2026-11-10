// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  final json = await fetch();
  print(json);
}

Future<Map<String, dynamic>> fetch() async {
  var url = Uri.parse('https://economia.awesomeapi.com.br/last/USD-BRL');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  return jsonDecode(response.body);
}