import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

class TransfersScreen extends StatefulWidget {
  const TransfersScreen({super.key});

  @override
  State<TransfersScreen> createState() => _TransfersScreenState();
}

class _TransfersScreenState extends State<TransfersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'خدمة كي للتحويل',
          style: ArabicTextStyle(
              arabicFont: ArabicFont.dinNextLTArabic,
              fontSize: 22,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/tree.png',width: 300,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("ماهي خدمة كي للتحويل",          style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 22,
                    color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('خدمة كي للتحويل هي وسيلة لارسال الاموال من \n حسابك الئ أي كي كارد او ماستر كي عن طريق التطبيق',
                  style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 17,
                    color: Colors.black),
                ),
              ),

            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow.shade600,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "تحويل الاموال",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 17,
                    color: Colors.black),

              ),
            )
          )

        ],
      ),
    );
  }
}
