import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../theme/style.dart';
import '../home/home_screen.dart';
import 'login_phone.dart';
import '../main_screen.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({Key? key}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            'تأكيد رقم الهاتف',
            style: ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 18,
                color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   icon: Icon(
          //     Icons.arrow_back_ios_rounded,
          //     color: Colors.black,
          //   ),
          // ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text(
                " ستصلك رسالة على الرمز",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "+964777777777",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "تعديل رقم الهاتف",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Pinput(
                  length: 6,
                  // defaultPinTheme: defaultPinTheme,
                  // focusedPinTheme: focusedPinTheme,
                  // submittedPinTheme: submittedPinTheme,

                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.sms_outlined),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            'phone',
                            (route) => false,
                          );
                        },
                        child: Text(
                          "أعادة ارسال الرمز",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 18,
                              color: Colors.red.shade700),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: CustomColors.bottom,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen(),
                            ));
                      },
                      child: const Text(
                        "تأكيد",
                        style: ArabicTextStyle(
                            arabicFont: ArabicFont.dinNextLTArabic,
                            fontSize: 18,
                            color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
