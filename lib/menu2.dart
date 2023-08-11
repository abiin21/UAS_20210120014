import 'package:flutter/material.dart';
import 'detail.dart';

class Menu2Page extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      'name': 'Boba Brown Sugar',
      'price': 'Rp 20.000',
      'image': 'assets/boba.jpg',
      'ket': 'Paduan susu gula aren dengan boba yang oke'
    },
    {
      'name': 'Cappucino',
      'price': 'Rp 22.000',
      'image': 'assets/cappucino.jpg',
      'ket': 'Paduan kopi dan susu dengan opsional gula'
    },
    {
      'name': 'Chocolate',
      'price': 'Rp 23.000',
      'image': 'assets/coklat.jpg',
      'ket': 'Coklat dan susu yang dipadukan menjadi satu'
    },
    {
      'name': 'Matcha Boba Milk',
      'price': 'Rp 27.000',
      'image': 'assets/matcha.jpg',
      'ket': 'Sajian matcha dan susu dingin'
    },
    {
      'name': 'Red Velvet',
      'price': 'Rp 25.000',
      'image': 'assets/red.jpg',
      'ket': 'Sajian redvelvet dengan susu segar'
    },
    {
      'name': 'Taro Milky',
      'price': 'Rp 25.000',
      'image': 'assets/taro.jpg',
      'ket': 'Sajian taro spesial dengan susu segar'
    },
    {
      'name': 'Kopi Susu Aren',
      'price': 'Rp 22.000',
      'image': 'assets/kopi.jpg',
      'ket': 'Paduan kopi, susu dan gula aren'
    },
    {
      'name': 'Kopsus Strawberry',
      'price': 'Rp 20.000',
      'image': 'assets/kopistoberi.jpg',
      'ket': 'Paduan kopi, susu strawberry dan gula aren'
    },
    {
      'name': 'Mango Juice',
      'price': 'Rp 20.000',
      'image': 'assets/mango.jpg',
      'ket': 'Sajian jus dari buah mangga segar'
    },
    {
      'name': 'Orange Juice',
      'price': 'Rp 20.000',
      'image': 'assets/orange.jpg',
      'ket': 'Sajian jus dari buah jeruk yang segar'
    },
    {
      'name': 'Ice Tea',
      'price': 'Rp 12.000',
      'image': 'assets/icetea.jpg',
      'ket': 'Sajian teh spesial dengan atau tanpa gula dingin atau hangat'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Makanan'),
        backgroundColor: Colors.pink[100],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue[50],
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        image: menuItems[index]['image'],
                        name: menuItems[index]['name'],
                        price: menuItems[index]['price'],
                        ket: menuItems[index]['ket'],
                      ),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      menuItems[index]['image'],
                      width: 100,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 10),
                    Text(
                      menuItems[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      menuItems[index]['price'],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
