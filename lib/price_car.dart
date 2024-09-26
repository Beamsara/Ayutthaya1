import 'package:ayutthaya1/images.dart';
import 'package:ayutthaya1/images1.dart';
import 'package:flutter/material.dart';

class PriceCarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ราคาเช่ารถ'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ปุ่มย้อนกลับ
          },
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/car.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Content on top of the background image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ราคาเช่ารถ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      // Car type A
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.8),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16.0),
                          leading: Icon(Icons.directions_car, size: 40),
                          title: Text('รถตุ๊กตุ๊ก วัดพนัญเชิงวรวิหาร'),
                          subtitle: Text('500 บาท/วัน'),
                          trailing: Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImagePage(),
                              ),
                            );
                          },
                        ),
                      ),
                      // Car type B
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.8),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16.0),
                          leading: Icon(Icons.directions_car, size: 40),
                          title: Text('รถตุ๊กตุ๊ก วัดมหาธาตุ'),
                          subtitle: Text('800 บาท/วัน'),
                          trailing: Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Images1(),
                              ),
                            );
                          },
                        ),
                      ),
                      // Add more car rental items here
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
