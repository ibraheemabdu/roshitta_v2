import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/change_password/presentation/pages/change_password_page.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../splash/presentation/pages/splash_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = context.locale.languageCode ;
    if(lang == 'ar')
    {
      lang = 'en';
    }
    else
    {
      lang = 'ar' ;
    }

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Settings',style:TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                      color: AppColors.green
                                  )
                              ),
                              width: 40,
                              height: 40,
                              child: Center(child: Icon(Icons.language,color: AppColors.green,)),
                            ),
                            SizedBox(width: 10,),
                            Text('Change Country'),
                          ],
                        ),
                        Icon(Icons.arrow_right,color: AppColors.green,)
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 1,),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Get.defaultDialog(
                            title: 'Languages',
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 40,
                                    child: Center(child: Text(lang == 'ar'?'Arabic':'English')),
                                  ),
                                  onTap: ()async{
                                    await context.setLocale(Locale(lang)); // change `easy_localization` locale
                                    Get.updateLocale(Locale(lang)); // change `Get` locale direction
                                    Get.offAll(SplashPage());
                                  },
                                )
                              ],
                            )
                        );
                      },
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                        color: AppColors.green
                                    )
                                ),
                                width: 40,
                                height: 40,
                                child: Center(child: Icon(Icons.abc,color: AppColors.green,)),
                              ),
                              SizedBox(width: 10,),
                              Text('Change Language'),
                            ],
                          ),
                          Icon(Icons.arrow_right,color: AppColors.green,)
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}