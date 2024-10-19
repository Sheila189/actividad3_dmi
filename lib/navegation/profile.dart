import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber[900],
                    foregroundColor: Colors.white,
                    child: const Text('SF'),
                  ),
                  const SizedBox(width: 8.0,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Añadido para alinear el texto
                    children: [
                      Text('Sheila Camila Sanchez Flores', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),), 
                      Text('Hace 10 minutos', style: TextStyle(fontSize: 12, color: Colors.black45, fontWeight: FontWeight.bold),)],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert)
                ],
              ),
            ),
            Image.asset(
              'assets/logo.jpg',
              width: double.infinity,
              height: 400,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.chat_bubble_outline_outlined),
                  Icon(Icons.send),
                  Spacer(),
                  Icon(Icons.save_alt),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Datos'),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Datos'),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Datos'),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('njrwgwjngrknnbvlkfdsnb vkdfbvmkdfbioaed oearmearkmnef erokmmdfmd ')),
              ],
            ),
          ],
        
        ),
      ),
    );
  }
}
