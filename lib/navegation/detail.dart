import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Detail extends StatelessWidget {
  final List<String> images;
  final String name;
  final double rating;
  final String description;

  const Detail({
    super.key,
    required this.images,
    required this.name,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carrusel de imágenes
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
              ),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      image,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
            // Nombre y calificación en la misma línea
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    StarRating(
                      rating: rating,
                      color: Colors.orange[300]!,
                      borderColor: Colors.grey,
                      starCount: 5,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '$rating',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // Descripción del restaurante
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
