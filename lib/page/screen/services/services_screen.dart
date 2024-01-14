import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'الخدمات',
          style: ArabicTextStyle(
              arabicFont: ArabicFont.dinNextLTArabic,
              fontSize: 22,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'خدمات تحويل الاموال',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child:  ListTile(
                  leading: Image.asset("assets/amazone.png",height: 100,width: 100,),
                  title: const Text(
                'ويسترن يونين',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 20,
                    color: Colors.black),
                  ),
                  subtitle: const Text(
                "ارسال واستلام الأموال لكل العالم مع ويسترن يونيون وزين كاش",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 12,
                    color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 15,),

              const Text(
                "خدمات القروض",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child:  ListTile(
                  leading: Image.asset("assets/raff.png",height: 50,width: 50,),
                  title: const Text(
                    'قروض الرافدين',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.dinNextLTArabic,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  subtitle: const Text(
                    'انواع القروض المقدمة للمواطنين من مصرف الرافدين. القروض العقارية · قروض تمويل ذوي المهن الصحية · القرض لتمويل المشاريع الصغيرة'
                    ,style: ArabicTextStyle(
                        arabicFont: ArabicFont.dinNextLTArabic,
                        fontSize: 12,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child:  ListTile(
                  leading: Image.asset("assets/aqsati-photo.jpg",height: 50,width: 50,),
                  title: const Text(
                    "أقساطي",
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.dinNextLTArabic,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  subtitle: const Text(
                    "هي خدمة تستهدف التجار والشركات من بائعي التجزئة بمختلف الخدمات والبضائع التي يقدموها  وايضا تستهدف جميع حاملي البطاقة التعريفية."
                    ,style: ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic,
                      fontSize: 12,
                      color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child:  ListTile(
                  leading: Image.asset("assets/tddd.jpg",height: 50,width: 50,),
                  title: const Text(
                    'تسديد',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.dinNextLTArabic,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  subtitle: const Text(
                    "منصة تسديد عبارة عن نظام مركزي فعال ومتكامل مصمم لتسهيل عملية دفع الفواتير للعملاء كـ فواتير الماء والكهرباء ورسوم المدارس ، إلخ "
                    ,style: ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic,
                      fontSize: 12,
                      color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 15,),

              const Text(
                "خدمات اخرئ",
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.dinNextLTArabic,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(height: 15,),

              Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child:  ListTile(
                  leading: Image.asset("assets/xsaff.jpg",height: 50,width: 50,),
                  title: const Text(
                    'اصدار بطاقة',
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.dinNextLTArabic,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  subtitle: const Text(
                    "بطاقة ماستر كارد. عند إختيارك هذه البطاقة ستتمكن من الوصول إلى شبكة واسعة جداً من التُجار الذين يقبلون بهذه العلامة التجارية، بالإضافة الى حصولك على تجارب مذهلة ."
                    ,style: ArabicTextStyle(
                      arabicFont: ArabicFont.dinNextLTArabic,
                      fontSize: 12,
                      color: Colors.black),
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
