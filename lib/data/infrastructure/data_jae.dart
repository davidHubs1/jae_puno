import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchData() async {
    //  solicitud GET a la URL
    http.Response response = await http
        .get(Uri.parse('https://eventosacademicosjae.org/g3r41d/post.php'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      throw Exception('Error en la solicitud: ${response.statusCode}');
    }
  }