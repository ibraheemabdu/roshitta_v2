
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/bottom_nav/presentation/pages/bottom_nav_page.dart';

class VerivicationPage extends StatefulWidget {
  const VerivicationPage({Key? key}) : super(key: key);
  @override
  State<VerivicationPage> createState() => _VerivicationPageState();
}



class _VerivicationPageState extends State<VerivicationPage> {




  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.light_green,),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.green),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: AppColors.light_green,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(Icons.arrow_back_ios),
                          onTap: () {
                            Get.back();
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                        width: Get.width,
                        child: Text('Sign up', style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ))),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                        width: Get.width,
                        child: Text(
                            'Are you Patient or Institution ?\nSignup New Account now',
                            style: TextStyle(
                              fontSize: 18,

                            ))),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  return s == '2222' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) {},
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Already have an account? ''',
                    style: TextStyle(fontSize: 15),
                  ),
                  InkWell(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: AppColors.purple),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Center(
                child: InkWell(
                    onTap: () {
                      Get.to(BottomNavPage(0));
                    },
                    child: buildButton('Verify', false)),
              )
            ],
          ),
        ),
      ),
    );
  }

}