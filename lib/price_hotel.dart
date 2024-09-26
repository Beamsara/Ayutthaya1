import 'package:flutter/material.dart';

class PriceHotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ราคาโรงแรม'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.hotel),
            title: Text('โรงแรม A'),
            subtitle: Text('1500 บาท/คืน'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // ฟังก์ชันเมื่อกดที่รายการ
            },
          ),
          ListTile(
            leading: Icon(Icons.hotel),
            title: Text('โรงแรม B'),
            subtitle: Text('2000 บาท/คืน'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // ฟังก์ชันเมื่อกดที่รายการ
            },
          ),
          // เพิ่มรายการโรงแรมเพิ่มเติมที่นี่
        ],
      ),
    );
  }
}
