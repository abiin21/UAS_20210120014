import 'package:flutter/material.dart';
import 'login_page.dart';
import 'menu1.dart';
import 'menu2.dart';
import 'menu4.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle_outlined,
                        color: Colors.pink[300], size: 30.0),
                    onPressed: () {
                      Navigator.pushNamed(context,
                          '/menu4'); // Navigasi ke Menu4Page (menu akun)
                    },
                  ),
                  IconButton(
                    icon:
                        Icon(Icons.logout, color: Colors.pink[300], size: 30.0),
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginpage');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Text(
                  "Dashboard E-Menu",
                  style: TextStyle(
                    color: Colors.pink[300],
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
                color: Colors.pink[300],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.pink[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/menu1'); // Navigasi ke Menu1Page
                          },
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.dinner_dining,
                                  color: Colors.pink[300],
                                  size: 50.0,
                                ),
                                SizedBox(height: 10.0),
                                Text("Menu Makanan",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    )),
                                SizedBox(height: 5.0),
                                Text("21 Items",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100))
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.pink[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/menu2'); // Navigasi ke Menu2Page
                          },
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.local_drink_sharp,
                                    color: Colors.pink[300], size: 50.0),
                                SizedBox(height: 10.0),
                                Text("Menu Minuman",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    )),
                                SizedBox(height: 5.0),
                                Text("19 Items",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100))
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.pink[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/menu3'); // Navigasi ke Menu3Page
                          },
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.motorcycle_rounded,
                                    color: Colors.pink[300], size: 50.0),
                                SizedBox(height: 10.0),
                                Text("Layanan Pesan Antar",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    )),
                                SizedBox(height: 5.0),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.pink[100],
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/menu4'); // Navigasi ke Menu4Page
                          },
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.settings_outlined,
                                    color: Colors.pink[300], size: 50.0),
                                SizedBox(height: 10.0),
                                Text("Setting Akun",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21.0,
                                    )),
                                SizedBox(height: 5.0),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
