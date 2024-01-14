import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../theme/style.dart';
import '../main_screen.dart';
import 'myVerify_screen.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: AppBar(
          title:  const Text(
            "استرجاع كلمة السر",
            style: ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
        body: Column(

          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
                'اكتب رقم هاتفك كي نرسل لك رسالة تحتوي على رمز \n اعادة ضبط كلمة السر',            style: ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 16,
                color: Colors.black),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IntlPhoneField(
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                decoration: InputDecoration(
                  labelText: ' الهاتف',
                  labelStyle: const ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic,
                      fontSize: 16,
                      color: Colors.black),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        10), //circular border for TextField.
                  ),
                ),
                initialCountryCode: 'IQ',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: CustomColors.bottom,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyVerify(),
                          ));
                    },
                    child: const Text(
                      "تأكيد",
                      style: ArabicTextStyle(
                          arabicFont: ArabicFont.dinNextLTArabic,
                          fontSize: 20,
                          color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
