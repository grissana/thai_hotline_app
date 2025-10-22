// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:thai_hotline_app/models/phone_list.dart';
import 'package:thai_hotline_app/view/subview/sub_a_home_ui.dart';
// import 'package:thai_hotline_app/view/subview/sub_b_home_ui.dart';
import 'package:thai_hotline_app/view/subview/sub_c_home_ui.dart';
import 'package:thai_hotline_app/view/subview/sub_d_home_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUi extends StatefulWidget {
  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<PhoneList> phoneLists = [
    PhoneList(
      name: 'เหตุด่วน เหตุร้าย',
      number: '191',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
      number: '199',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'สายด่วนรถหาย (ตำรวจแห่งชาติ)',
      number: '1192',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'อุบัติเหตุ ทางน้ำ',
      number: '1196',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'แจ้งคนหาย',
      number: '1300',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'ศูนย์ปลอดภัย คมนาคม',
      number: '1356',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'หน่วยแพทย์ฉ กู้ชีพ',
      number: '1554',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'ศูนย์เอราวัณ',
      number: '1646',
      image: 'bb.png',
    ),
    PhoneList(
      name: 'เจ็บป่วยฉุกเฉิน',
      number: '1669',
      image: 'bb.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('สายด่วน THAILAND',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/images/an.jpg'),
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.width * 0.4,
              // fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: phoneLists.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15), // มุมโค้งมน
                    border: Border.all(
                      color: Colors.grey.shade300, // สีของกรอบ
                      width: 2, // ความหนาของกรอบ
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 5,
                        offset: Offset(2, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    onTap: () {
                      _makePhoneCall(phoneLists[index].number!);
                    },
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Image.asset(
                        'assets/images/${phoneLists[index].image}',
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                    title: Text(
                      phoneLists[index].name!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      phoneLists[index].number!,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SubAHomeUi()),
              );
              break;

            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SubBHomeUi()),
              );
              break;

            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SubCHomeUi()),
              );
              break;

            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SubDHomeUi()),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions, color: Colors.black),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: Colors.black),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance, color: Colors.black),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety, color: Colors.black),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}
