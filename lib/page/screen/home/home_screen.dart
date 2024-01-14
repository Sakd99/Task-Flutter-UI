import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../model/constants/app_textstyle.dart';
import '../../model/constants/color_constants.dart';
import '../../model/data/card_data.dart';
import '../../model/data/transaction_data.dart';

import '../../theme/style.dart';
import '../../widgets/my_card.dart';
import '../../widgets/transaction_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "حساباتي",
          style: ArabicTextStyle(
              arabicFont: ArabicFont.dinNextLTArabic,
              fontSize: 22,
              color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: CustomColors.yall,
              radius: 18,
              child: const Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: myCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                          Icons.arrow_forward,
                          size: 30,
                          color: CustomColors.bottom,
                        ),
                        const Text(
                          "تحويل الاموال",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 14,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                          Icons.list_outlined,
                          size: 30,
                          color: CustomColors.bottom,
                        ),
                        const Text(
                          "حركات المالية",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 14,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                          Iconsax.wallet_1,
                          size: 30,
                          color: CustomColors.bottom,
                        ),
                        const Text(
                          "البطاقات المربوطة",
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.dinNextLTArabic,
                              fontSize: 14,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('خدماتنا',                style: ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 18,
                color: Colors.black),),
          ),
              const SizedBox(
                height: 15,
              ),

            SizedBox(
                height: 120,
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ListCd();
                    }),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 120,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/qi-master-card.png',fit: BoxFit.fill,)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ListCd extends StatefulWidget {
  const ListCd({super.key});

  @override
  State<ListCd> createState() => _ListCdState();
}

class _ListCdState extends State<ListCd> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green.shade700,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              Image.asset("assets/raff.png",height: 50,width: 50,color: Colors.white,),
              const Text('قروض الرافدين',                style: ArabicTextStyle(
                  arabicFont: ArabicFont.dinNextLTArabic,
                  fontSize: 18,
                  color: Colors.white),),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.pink.shade700,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Icon(Iconsax.money4,color: Colors.white,size: 50,),
              Text('سلفني',                style: ArabicTextStyle(
                  arabicFont: ArabicFont.dinNextLTArabic,
                  fontSize: 18,
                  color: Colors.white),),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue.shade700,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Icon(Iconsax.box,color: Colors.white,size: 50,),
              Text('تعقب الطلبات',
                style: ArabicTextStyle(
                  arabicFont: ArabicFont.dinNextLTArabic,
                  fontSize: 18,
                  color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
