import 'package:flutter/material.dart';
import 'detail.dart';

class Menu1Page extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      'name': 'Nasi Bakar',
      'price': 'Rp 25.000',
      'image': 'assets/nasibakar.jpg',
      'ket': 'Nasi Bakar dengan isian ayam bumbu spesial'
    },
    {
      'name': 'Nasi Goreng',
      'price': 'Rp 25.000',
      'image': 'assets/nasgorr.jpg',
      'ket': 'Nasi Goreng Kampung dengan rempah spesial'
    },
    {
      'name': 'Ayam BBQ',
      'price': 'Rp 30.000',
      'image': 'assets/ayam.jpg',
      'ket': '6 Potong ayam dengan bumbu BBQ khas Lolly Cafe'
    },
    {
      'name': 'Bakso Kampung',
      'price': 'Rp 15.000',
      'image': 'assets/bakso.jpg',
      'ket': 'Bakso kampung khas abang abang gerobak'
    },
    {
      'name': 'Mie Goreng Special',
      'price': 'Rp 18.000',
      'image': 'assets/migoreng.jpg',
      'ket': 'Mie goreng spesial dengan telur mata sapi'
    },
    {
      'name': 'Kentang Goreng',
      'price': 'Rp 15.000',
      'image': 'assets/kengor.jpg',
      'ket': 'Kentang Goreng dengan sajian bumbu dan saus'
    },
    {
      'name': 'Roti Bakar',
      'price': 'Rp 20.000',
      'image': 'assets/rotbak.jpg',
      'ket': 'Roti bakar dengan toping keju dan coklat'
    },
    {
      'name': 'Pisang Bakar',
      'price': 'Rp 20.000',
      'image': 'assets/pisbak.jpg',
      'ket': 'Pisang yang dibakar diatas arang dengan toping Keju dan coklat'
    },
    {
      'name': 'Lasagna',
      'price': 'Rp 25.000',
      'image': 'assets/lasagna.jpg',
      'ket': 'Makanan khas italy dengan saus bolognese'
    },
    {
      'name': 'Croffle',
      'price': 'Rp 25.000',
      'image': 'assets/croffle.jpg',
      'ket': 'Sajian croissant dengan waffle'
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
