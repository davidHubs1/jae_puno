import 'package:flutter/material.dart';
import 'package:jae_puno/data/infrastructure/data_jae.dart';

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
                    'https://eventosacademicosjae.org/jae-flutter/logo/$imageName';

                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 35,
                        child: imageUrl == null
                            ? CircularProgressIndicator(
                                strokeWidth: 1.5,
                                backgroundColor: Colors.grey[400],
                              )
                            : Image.network(
                                imageUrl,
                                width: 50,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 1,
                      color: Colors.grey,
                      height: 35,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ListTile(
                        title: Text(data[index]['nombre']),
                        subtitle: Text(data[index]['corto']),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
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
