import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String ket;

  DetailPage({
    required this.image,
    required this.name,
    required this.price,
    required this.ket,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),
          Text(
            ket,
            style: TextStyle(
              color: Colors.grey[1000],
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
