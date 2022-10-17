import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/home/presentation/widgets/doctors_widget.dart';
import 'package:rosheta/features/home/presentation/widgets/search-filter_widget.dart';
import 'package:rosheta/features/notification/presentation/pages/notification_page.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import '../../../../core/side_drawer.dart';
import '../widgets/category_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>  {

  final _advancedDrawerController = AdvancedDrawerController();



  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(

      drawer: SideDrawer(_advancedDrawerController),
      backdropColor: Colors.white,
      controller: _advancedDrawerController,

      //rtlOpening: translator.isDirectionRTL(context) ? true : false,
      disabledGestures: true,
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),

      child: Scaffold(
        drawer:SideDrawer(_advancedDrawerController),
        backgroundColor: Colors.white,
        body: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: FaIcon(
                      FontAwesomeIcons.barsStaggered,
                    ),
                    onTap: () {
                      _advancedDrawerController.showDrawer();
                    },
                  ),
                  InkWell(
                    onTap:(){
                      Get.to(NotificationPage());
                    },
                    child: FaIcon(
                      FontAwesomeIcons.bell,
                    ),
                  )
                ],
              ),
            ),

            SearchFilterWidget(),



            SizedBox(
              height: 5,
            ),


            CategoryWidget(),









            SizedBox(
              height: 25,
            ),




            DoctorsWidget(),


            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}


