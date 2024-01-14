import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';

import '../transfers/card_screen.dart';
import 'add_qr_card.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "اضافة بطاقة مصرفية",
          style: ArabicTextStyle(
              arabicFont: ArabicFont.dinNextLTArabic,
              fontSize: 20,
              color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Image.asset('assets/caetd.png'),
          const Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CardScreen()));
            },

            leading: Image.asset('assets/cardr.png',width: 30,),
            title: const Text(
              "ادخل رقم الحساب يدوي",
              style: ArabicTextStyle(
                  arabicFont: ArabicFont.dinNextLTArabic,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Divider(),
           ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddQrCard()));
            },
            leading: const Icon(Icons.qr_code_2,size: 30,),
            title: const Text(
              "ادخل بواسطة QR",
              style: ArabicTextStyle(
                  arabicFont: ArabicFont.dinNextLTArabic,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          const Divider(),


        ],
      ),
    );
  }
}
