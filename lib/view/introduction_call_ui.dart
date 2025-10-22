import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/gestures.dart';
// import 'package:thai_hotline_app/view/home_ui.dart';
import 'package:thai_hotline_app/view/subview/sub_a_home_ui.dart';

class IntroductionCallUi extends StatefulWidget {
  const IntroductionCallUi({super.key});

  @override
  State<IntroductionCallUi> createState() => _IntroductionCallUiState();
}

class _IntroductionCallUiState extends State<IntroductionCallUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: SafeArea(
          child: IntroductionScreen(
            globalBackgroundColor: Colors.white,
            pages: [
              PageViewModel(
                title: '',
                bodyWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                            const TextSpan(
                              text:
                                  'เมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด\nจะใกล้หรือไกลเพียงใด\nสอบถามข้อมูลการเดินทาง การจราจร\nทางด่วน ทางหลัก ทางรอง\nเส้นทางเลี่ยงการจราจรติดขัด\nข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT\nชักช้าอยู่ใย ',
                            ),
                            TextSpan(
                              text: 'โทรเลย!!!',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'สายด่วน\nการเดินทาง',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                image: Image.asset('assets/images/map1.png',
                    height: MediaQuery.of(context).size.height * 0.30),
              ),
              PageViewModel(
                title: '',
                bodyWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                            const TextSpan(
                              text:
                                  'อุบัติเหตุ ป่วยฉุกเฉิน ไฟไหม้\nรถหาย สัตว์ร้ายเข้าบ้าน\nทุกอย่างเกิดขึ้นได้ตลอดเวลา\nจะดีกว่าไหม\nเมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าย\nสามารถโทรแจ้งได้ทันท่วงที\nไม่ต้องรอ ',
                            ),
                            TextSpan(
                              text: 'โทรเลย!!!',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                image: Image.asset('assets/images/car.png',
                    height: MediaQuery.of(context).size.height * 0.30),
              ),
              PageViewModel(
                title: '',
                bodyWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                            const TextSpan(
                              text:
                                  'เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\nกิน เที่ยว ซื้อสินค้า\nการเดินทาง การรักษาพยาบาล\nหรือโดนเหตุมิจฉาชีพ\nแก๊งคอลเซ็นเตอร์หลอกลวง\nสามารถติดต่อธนาคารโดยตรง\nได้เลย ',
                            ),
                            TextSpan(
                              text: 'โทรเลย!!!',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'สายด่วน\nธนาคาร',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                image: Image.asset('assets/images/bb1.png',
                    height: MediaQuery.of(context).size.height * 0.30),
              ),
              PageViewModel(
                title: '',
                bodyWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                            const TextSpan(
                              text:
                                  'น้ำไม่ไหล\nไฟฟ้าดับ\nโทรไม่ติด\nอินเตอร์เน็ตมีปัญหา\nเข้า Social Media ไม่ได้\nรอไม่ได้ ',
                            ),
                            TextSpan(
                              text: 'โทรเลย!!!',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'สายด่วน\nสาธารณูปโภค',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                image: Image.asset('assets/images/p.png',
                    height: MediaQuery.of(context).size.height * 0.30),
              ),
            ],
            showSkipButton: true,
            skip: const Text(
              'ข้าม',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onSkip: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SubAHomeUi(),
                ),
              );
            },
            dotsDecorator: DotsDecorator(
              size: const Size(20, 20),
              color: Colors.grey,
              activeSize: const Size(20, 20),
              activeColor: Colors.blue,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            next: const Icon(Icons.arrow_forward_ios, color: Colors.black),
            done: const Text(
              'โทรเลย',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onDone: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SubAHomeUi(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
