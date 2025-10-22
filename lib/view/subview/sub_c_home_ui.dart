// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:thai_hotline_app/models/phone_list.dart';
import 'package:thai_hotline_app/view/about_ui.dart';
import 'package:thai_hotline_app/view/subview/sub_a_home_ui.dart';
import 'package:thai_hotline_app/view/subview/sub_b_home_ui.dart';
// import 'package:thai_hotline_app/view/subview/sub_b_home_ui.dart';
// import 'package:thai_hotline_app/view/subview/sub_c_home_ui.dart';
import 'package:thai_hotline_app/view/subview/sub_d_home_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUi extends StatefulWidget {
  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<PhoneList> phoneLists = [
    PhoneList(
      name: 'ธนาคาร กรุงเทพฯ',
      number: '1333',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร ออมสิน',
      number: '1115',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร กสิกรไทย',
      number: '02 888 8888',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร กรุงไทย',
      number: '02 111 1111',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร กรุงศรีอยุธยา',
      number: '1572',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร ทีเอ็มบีธนชาต',
      number: '1428',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'CITI BANK',
      number: '1588',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'LH BANK',
      number: '1327',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธอส.',
      number: '02 645 9000',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคารไทยพาณิชย์',
      number: '02 777 7777',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'KIATNAKINPHATRA',
      number: '02 165 5555',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร ไทยเครดิต เพื่อรายย่อย',
      number: '02 697 5454',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'UOB BANK',
      number: '02 285 1555',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร TISCO',
      number: '02 636 6000',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคารอิสลาม แห่งประเทศไทย',
      number: '02 204 2766',
      image: 'n.jpg',
    ),
    PhoneList(
      name: 'ธนาคาร ซีไอเอ็มบี ไทย',
      number: '02 626 7777',
      image: 'n.jpg',
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUi(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'สายด่วน\nธนาคาร',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/images/bb1.png'),
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
        currentIndex: 2,
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
