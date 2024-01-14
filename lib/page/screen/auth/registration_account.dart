import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../theme/style.dart';
import '../main_screen.dart';
import 'myVerify_screen.dart';

class AccountRegistration extends StatefulWidget {
  const AccountRegistration({super.key});

  @override
  State<AccountRegistration> createState() => _AccountRegistrationState();
}

class _AccountRegistrationState extends State<AccountRegistration> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title:  const Text(
            "تسجيل الحساب",
            style: ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IntlPhoneField(
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                decoration:  InputDecoration(
                  labelText: ' الهاتف',
                  labelStyle: const ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic, fontSize: 15),


                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),//circular border for TextField.
                  ),
                ),
                initialCountryCode: 'IQ',

                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  print(value);
                },
                obscureText: hidePassword,//show/hide password
                decoration: InputDecoration(
                  labelText: 'كلمة السر',
                  labelStyle: const ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic, fontSize: 15),

                  prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                  suffixIcon: IconButton(
                    icon: hidePassword
                        ? const Icon(Icons.visibility_off,color: Colors.grey,)
                        : const Icon(Icons.visibility,color: Colors.grey,),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),//circular border for TextField.
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  print(value);
                },
                obscureText: hidePassword,//show/hide password
                decoration: InputDecoration(
                  labelText: 'تأكيد كلمة السر',
                  labelStyle: const ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic, fontSize: 13),

                  prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
                  suffixIcon: IconButton(
                    icon: hidePassword
                        ? const Icon(Icons.visibility_off,color: Colors.grey,)
                        : const Icon(Icons.visibility,color: Colors.grey,),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),//circular border for TextField.
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150,),
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
                      "تسجيل حساب",
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
    );
  }
}
