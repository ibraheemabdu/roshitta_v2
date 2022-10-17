import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/account_doctor/presentation/pages/account_doctor_page.dart';
import 'package:rosheta/features/change_password/presentation/pages/change_password_page.dart';
import 'package:rosheta/features/faq/presentation/widgets/faq_widget.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Get.back();
                  },
                ),
                Text(
                  'FAQ',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              FAQWidget(),
              FAQWidget(),
              FAQWidget(),
              FAQWidget(),
              FAQWidget(),
              FAQWidget(),
              FAQWidget(),
              FAQWidget(),
            ],
          )


        ],
      ),
    );
  }
}

