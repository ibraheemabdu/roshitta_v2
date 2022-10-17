import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:rosheta/features/faq/presentation/pages/faq_page.dart';

import '../features/about_us/presentation/pages/aboutus_page.dart';
import '../features/privacy_policy/presentation/pages/privacy_policy_page.dart';
import '../features/start/presentation/pages/start_page.dart';
import '../features/support/presentation/pages/support_page.dart';
import '../features/wishlist/presentation/pages/wishlist_page.dart';
import 'app_consts.dart';

class SideDrawer extends StatefulWidget {

  SideDrawer( advancedDrawerController);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  final advancedDrawerController = AdvancedDrawerController();
  late bool isLogIn   = false ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Razan Abughoush',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )),
                      Text('rznjamal@gmail.com',style: TextStyle(
                        fontSize: 12,
                      )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(AboutUsPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.article_outlined),
                              SizedBox(width: 10,),
                              Text('About Us')
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(WishListPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 10,),
                              Text('Favorite')
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(SupportPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.support),
                              SizedBox(width: 10,),
                              Text('Support')
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(PrivacyPolicyPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.privacy_tip_outlined),
                              SizedBox(width: 10,),
                              Text('Privacy Policy')
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: (){ Get.to(FAQPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.not_listed_location_outlined),
                              SizedBox(width: 10,),
                              Text('FAQ')
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(AboutUsPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star_border),
                              SizedBox(width: 10,),
                              Text('Review App')
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
