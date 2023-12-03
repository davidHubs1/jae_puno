import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Data',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<dynamic>> fetchData() async {
    // Realiza la solicitud GET a la URL proporcionada
    http.Response response = await http
        .get(Uri.parse('https://eventosacademicosjae.org/g3r41d/post.php'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      throw Exception('Error en la solicitud: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Data'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<dynamic> data = snapshot.data ?? [];
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                String imageName = data[index]['logo'];
                String imageUrl =
                    'https://eventosacademicosjae.org/g3r41d/$imageName';

                return Column(
                  children: [
                    ListTile(
                      title: Text('ID: ${data[index]['ID']}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nombre: ${data[index]['nombre']}'),
                          Text('Corto: ${data[index]['corto']}'),
                          Text('Estado: ${data[index]['estado']}'),
                        ],
                      ),
                      leading: imageUrl != null
                          ? CircularProgressIndicator(
                              strokeWidth: 2,
                              backgroundColor: Colors.grey,
                            )
                          : Image.network(
                              imageUrl,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Divider(), // Agrega un separador entre cada ListTile
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
