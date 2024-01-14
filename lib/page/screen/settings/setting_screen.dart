import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../theme/style.dart';
import '../../utils/image_constant.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'المزيد',
          style: ArabicTextStyle(
              arabicFont: ArabicFont.dinNextLTArabic,
              fontSize: 22,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                '9647777777+',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
              )),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade100,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.update,
                            size: 30,
                            color: Colors.grey.shade700,
                          ),
                          const Text(
                            "تحديث الحساب",
                            style: ArabicTextStyle(
                                arabicFont: ArabicFont.dinNextLTArabic,
                                fontSize: 13,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.upload_file,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Text(
                          "تحديثات المعلومات",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 13,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 5,),

                  Container(
                    height: 80,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Iconsax.setting,
                          size: 30,
                          color: Colors.red,
                        ),
                        Text(
                          "معلومات الحساب",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 13,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              SettingItem(
                title: "الاعدادات",
                icon: Iconsax.setting,
                bgColor: Colors.orange.shade700,
                iconColor: Colors.white,
                onTap: () {},
              ),
              const SizedBox(height: 15),
              SettingItem(
                title: "مشاركة",
                icon: Iconsax.share,
                bgColor: Colors.blue.shade700,
                iconColor: Colors.white,
                onTap: () {},
              ),
              const SizedBox(height: 15),
              SettingSwitch(
                title: "الوضع الداكن",
                icon: Icons.dark_mode,
                bgColor: Colors.teal.shade700,
                iconColor: Colors.white,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              const SizedBox(height: 15),

              SettingItem(
                title: "تقييم التطبيق",
                icon: Icons.star_border,

                bgColor: Colors.yellow.shade700,
                iconColor: Colors.white,
                // value: "English",
                onTap: () {},
              ),

              const SizedBox(height: 15),
              SettingItem(
                title: "تقييم الاتصال بمركز الخدمة",
                icon: Icons.phone,
                bgColor: Colors.red.shade700,
                iconColor: Colors.white,
                onTap: () {},
              ),
              const SizedBox(height: 15),

              SettingItem(
                title: "حول التطبيق",
                icon: Icons.assignment_late_outlined,

                bgColor: Colors.purple.shade700,
                iconColor: Colors.white,
                // value: "English",
                onTap: () {},
              ),
              const SizedBox(height: 15),

              // SettingItem(
              //   title: "حول التطبيق",
              //   icon: Icons.logout,
              //
              //   bgColor: Colors.tealAccent.shade700,
              //   iconColor: Colors.white,
              //   // value: "English",
              //   onTap: () {},
              // ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          Images.logot,
                          color: Colors.red.shade700,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'تسجيل خروج',
                        style: ArabicTextStyle(
                            arabicFont: ArabicFont.dinNextLTArabic,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  String gender = "man";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: const Size(60, 50),
                elevation: 3,
              ),
              icon: const Icon(Icons.check, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: "Photo",
                widget: Column(
                  children: [
                    Image.asset(
                      "assets/avatar.png",
                      height: 100,
                      width: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.lightBlueAccent,
                      ),
                      child: const Text("Upload Image"),
                    )
                  ],
                ),
              ),
              const EditItem(
                title: "Name",
                widget: TextField(),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: "Gender",
                widget: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          gender = "man";
                        });
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: gender == "man"
                            ? Colors.deepPurple
                            : Colors.grey.shade200,
                        fixedSize: const Size(50, 50),
                      ),
                      icon: Icon(
                        Icons.male,
                        color: gender == "man" ? Colors.white : Colors.black,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          gender = "woman";
                        });
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: gender == "woman"
                            ? Colors.deepPurple
                            : Colors.grey.shade200,
                        fixedSize: const Size(50, 50),
                      ),
                      icon: Icon(
                        Icons.female,
                        color: gender == "woman" ? Colors.white : Colors.black,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const EditItem(
                widget: TextField(),
                title: "Age",
              ),
              const SizedBox(height: 40),
              const EditItem(
                widget: TextField(),
                title: "Email",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditItem extends StatelessWidget {
  final Widget widget;
  final String title;
  const EditItem({
    super.key,
    required this.widget,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(width: 40),
        Expanded(
          flex: 5,
          child: widget,
        )
      ],
    );
  }
}

class ForwardButton extends StatelessWidget {
  final Function() onTap;
  const ForwardButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 15,
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;
  final String? value;
  const SettingItem({
    super.key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.onTap,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 16,
                color: Colors.black),
          ),
          const Spacer(),
          value != null
              ? Text(
                  value!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              : const SizedBox(),
          const SizedBox(width: 20),
          ForwardButton(
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class SettingSwitch extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final bool value;
  final Function(bool value) onTap;
  const SettingSwitch({
    super.key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 17,
                color: Colors.black),
          ),
          const Spacer(),
          Text(
            value ? "On" : "Off",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 20),
          CupertinoSwitch(
            value: value,
            onChanged: onTap,
          ),
        ],
      ),
    );
  }
}
