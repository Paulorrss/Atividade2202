import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cidades de Rondônia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Cidades de Rondônia',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg',
              fit: BoxFit.cover,
              height: 260,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Ji-Paraná, Rondônia',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      leading: const Icon(
                        Icons.location_city,
                        color: Colors.blue,
                      ),
                      trailing: Icon(Icons.star, color: Colors.yellow[600]),
                      subtitle: Text('3.500 estrelas'),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        // Adicione sua lógica para "Ligar" aqui
                      },
                      child: const ListTile(
                        leading: Icon(Icons.phone, color: Colors.blue),
                        title: Text('Ligar'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Adicione sua lógica para "Endereço" aqui
                      },
                      child: const ListTile(
                        leading: Icon(Icons.web, color: Colors.blue),
                        title: Text('Endereço'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Adicione sua lógica para "Compartilhar" aqui
                      },
                      child: const ListTile(
                        leading: Icon(Icons.share, color: Colors.blue),
                        title: Text('Compartilhar'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Ji-Paraná é um município brasileiro do estado de '
                        'Rondônia. Sua população, conforme estimativas '
                        'do IBGE de 2021, era de 131.026 habitantes, '
                        'sendo o segundo mais populoso do estado e o '
                        'décimo sexto mais populoso da Região Norte do '
                        'Brasil, a 226ª mais populosa do Brasil e a 113ª '
                        'mais populosa cidade do interior brasileiro.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
