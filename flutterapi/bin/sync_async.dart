import 'dart:convert';
import 'package:http/http.dart' as http;

Future main() async {
  final json = await fetch();
  print(json['title']);
}

Future<Map> fetch() async {
  print('passei no fetch');
  var url = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  var response = await http.get(url);
  print(response.body);
  var json = jsonDecode(response.body);
  return json;
}
