import 'package:ayutthaya1/price_car.dart';
import 'package:flutter/material.dart';

class Images1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สถานที่ท่องเที่ยวในอยุธยา'),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark), // ไอคอน Bookmark
            onPressed: () {
              // ฟังก์ชันเมื่อกดที่ไอคอน Bookmark
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'วัดมหาธาตุ',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: 3, // จำนวนรูปภาพ
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8.0), // ช่องว่างระหว่างภาพ
                      child: GestureDetector(
                        onTap: () {
                          // ฟังก์ชันเมื่อกดที่รูปภาพ
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0), // มุมโค้งมน
                            border: Border.all(
                              color: Colors.blueGrey, // สีของกรอบ
                              width: 4.0, // ความหนาของกรอบ
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // สีของเงา
                                spreadRadius: 2, // ระยะเงา
                                blurRadius: 8, // ความเบลอของเงา
                                offset: Offset(0, 4), // ตำแหน่งของเงา
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage('assets/images/wat${index + 1}.jpg'), // ชื่อไฟล์รูปภาพ
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 200.0, // ความสูงของภาพ
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.car_crash, size: 40.0), // ไอคอนรถตุ๊กตุ๊ก
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PriceCarPage()), // เปลี่ยนหน้าไปยัง PriceCarPage
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
