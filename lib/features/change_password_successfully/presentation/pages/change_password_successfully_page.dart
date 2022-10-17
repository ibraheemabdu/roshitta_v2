import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/login/presentation/pages/login_page.dart';
import '../../../../core/app_consts.dart';
import '../../../bottom_nav/presentation/pages/bottom_nav_page.dart';


class ChangePasswordSuccessfullyPage extends StatefulWidget {
  const ChangePasswordSuccessfullyPage({Key? key}) : super(key: key);
  @override
  _ChangePasswordSuccessfullyPageState createState() => _ChangePasswordSuccessfullyPageState();
}

class _ChangePasswordSuccessfullyPageState extends State<ChangePasswordSuccessfullyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/congrates-icon.png',width: Get.width/2,),
            SizedBox(height: 30,),
            Column(
              children: [
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: Container(
                        width: Get.width,
                        child: Text('Congrats!!',
                            textAlign:TextAlign.center,
                            style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                        ))),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                      width: Get.width,
                      child: Text(
                          'You have successfully change password. \n Please use new password while login.',
                          textAlign:TextAlign.center,
                          style: TextStyle(
                        fontSize: 18,
                      ))),
                ),
              ],
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Get.to(BottomNavPage(0));
              },
                child: buildButton('Login Now', false))
          ],
        ),
      ),
    );
  }
}

