import 'package:flutter/material.dart';

class Menu4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Akun Saya'),
        backgroundColor: Colors.pink[100],
      ),
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Keyla Bintang',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.grey[600]),
                    SizedBox(width: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'keylabintang@gmail.com',
                        style:
                            TextStyle(fontSize: 18, color: Colors.grey[1000]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.grey[600]),
                    SizedBox(width: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '0851-5637-6024',
                        style:
                            TextStyle(fontSize: 18, color: Colors.grey[1000]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.grey[600]),
                    SizedBox(width: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Kota Cirebon',
                        style:
                            TextStyle(fontSize: 18, color: Colors.grey[1000]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.card_membership, color: Colors.grey[600]),
                    SizedBox(width: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Member Platinum',
                        style:
                            TextStyle(fontSize: 18, color: Colors.grey[1000]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loginpage');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[300],
                  ),
                  child: Text('Keluar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
