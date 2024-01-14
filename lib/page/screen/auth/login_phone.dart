import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:k/page/screen/auth/password_recovery.dart';

import '../../theme/style.dart';
import '../../utils/image_constant.dart';
import '../home/home_screen.dart';
import '../main_screen.dart';
import 'create_accont.dart';
import 'myVerify_screen.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();
  bool hidePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+964";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(Images.logo, width: 90)),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "خدمات كي المصرفية",
                  style: ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic, fontSize: 22),
                ),
                const SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntlPhoneField(
                    style: const ArabicTextStyle(
                        arabicFont: ArabicFont.dinNextLTArabic, fontSize: 18),
                    flagsButtonPadding: const EdgeInsets.all(8),
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: InputDecoration(
                      labelText: ' الهاتف',
                      labelStyle: const ArabicTextStyle(
                          arabicFont: ArabicFont.dinNextLTArabic, fontSize: 15),
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
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    obscureText: hidePassword, //show/hide password
                    decoration: InputDecoration(
                      labelText: 'كلمة السر',
                      labelStyle: const ArabicTextStyle(
                          arabicFont: ArabicFont.dinNextLTArabic, fontSize: 15),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: hidePassword
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), //circular border for TextField.
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
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
                                builder: (context) => MainScreen(),
                              ));
                        },
                        child: const Text(
                          "تسجيل الدخول",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 18,
                              color: Colors.white),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PasswordRecovery()));
                    },
                    child: Text(
                      "هل نسيت كلمة السر؟",
                      style: ArabicTextStyle(
                          arabicFont: ArabicFont.dinNextLTArabic,
                          fontSize: 18,
                          color: CustomColors.bottom),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CreateAccount()));
                      },
                      child: const Text(
                        "إنشاء حساب جديد",
                        style: ArabicTextStyle(
                            arabicFont: ArabicFont.dinNextLTArabic,
                            fontSize: 20,
                            color: Colors.red),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
