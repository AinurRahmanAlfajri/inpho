import 'package:flutter/material.dart';

class PhoneDetailPage extends StatelessWidget {
  final String phoneName;
  final String imageUrl;
  final List<String> specifications;

  PhoneDetailPage({
    required this.phoneName,
    required this.imageUrl,
    required this.specifications,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(phoneName),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            imageUrl,
            width: 200.0,
            height: 200.0,
          ),
          SizedBox(height: 16.0),
          Text(
            'Specifications',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: ListView.builder(
              itemCount: specifications.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(specifications[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PhoneDetailPage(
      phoneName: 'Xiaomi Mi 11',
      imageUrl:
          'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
      specifications: [
        'RAM: 8GB',
        'Internal Storage: 128GB',
        'Screen Size: 6.81 inches',
        'Battery Capacity: 4600mAh',
        // Tambahkan spesifikasi lainnya sesuai kebutuhan
      ],
    ),
  ));
}
