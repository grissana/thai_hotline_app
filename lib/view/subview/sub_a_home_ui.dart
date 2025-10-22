import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('Sub A Home UI'),
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
                // Action for info button
              },
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'สายด่วน\nการเดินทาง',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Image(
              image: AssetImage('assets/images/b.jpg'),
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
      //เมนูด้านล่าง
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation based on tapped index
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
            icon: Icon(FontAwesomeIcons.bank, color: Colors.black),
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
