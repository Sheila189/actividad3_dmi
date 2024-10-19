import 'package:flutter/material.dart';
import 'content_column.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título de la AppBar'),
      ),
      body: const Column(
        children: [
          ContentColumn(
            title: 'Primer columna',
            text: 'Primer párrafo',
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ContentColumn(
              title: 'Segunda columna',
              text: 'Segundo párrafo',
            ),
          ),
          ContentColumn(
            title: 'Tercer columna',
            text: 'Tercer párrafo',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Click"),
        backgroundColor: Colors.cyanAccent[400],
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
