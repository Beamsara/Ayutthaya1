import 'package:ayutthaya1/price_car.dart';
import 'package:flutter/material.dart';
import 'images.dart'; // นำเข้าไฟล์ images.dart

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            'YUDYA',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.wifi),
            onPressed: () {
              // ฟังก์ชันสำหรับไอคอน WiFi
            },
          ),
          IconButton(
            icon: Icon(Icons.signal_cellular_4_bar),
            onPressed: () {
              // ฟังก์ชันสำหรับไอคอน 4G
            },
          ),
          IconButton(
            icon: Icon(Icons.battery_full),
            onPressed: () {
              // ฟังก์ชันสำหรับไอคอนแบตเตอรี่
            },
          ),
          SizedBox(width: 10), // ช่องว่างระหว่างไอคอนและขอบขวา
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/yudya.jpg'), // เปลี่ยนชื่อไฟล์ให้ตรงกับไฟล์ของคุณ
            fit: BoxFit.cover, // ปรับขนาดรูปภาพให้พอดีกับหน้าจอ
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ชุดของบรรทัดกรอกข้อมูล
              TextField(
                decoration: InputDecoration(
                  labelText: 'ชื่อของคุณ',
                  prefixIcon: Icon(Icons.person, color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center, // จัดตำแหน่งข้อความให้อยู่ตรงกลาง
              ),
              SizedBox(height: 16), // ช่องว่างระหว่างช่องกรอกข้อมูล
              TextField(
                decoration: InputDecoration(
                  labelText: 'อายุของคุณ',
                  prefixIcon: Icon(Icons.calendar_today, color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center, // จัดตำแหน่งข้อความให้อยู่ตรงกลาง
              ),
              SizedBox(height: 32), // ช่องว่างระหว่างช่องกรอกข้อมูลกับปุ่ม
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ImagePage()), // นำไปยังหน้า ImagePage
                  );
                },
                child: Text('เริ่ม'),
              ),
              SizedBox(
                  height:
                      16), // ช่องว่างระหว่างปุ่มเริ่มกับปุ่มบริการรถตุ๊กตุ๊ก
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PriceCarPage()), // นำไปยังหน้า ImagePage
                  );
                },
                icon: Icon(Icons.directions_car),
                label: Text('บริการรถตุ๊กตุ๊ก'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
