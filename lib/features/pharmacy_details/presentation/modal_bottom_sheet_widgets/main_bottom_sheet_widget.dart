import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_consts.dart';


class MainBottomSheetWidget extends StatefulWidget {
  const MainBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _MainBottomSheetWidgetState createState() => _MainBottomSheetWidgetState();
}

class _MainBottomSheetWidgetState extends State<MainBottomSheetWidget> {

  final _loremIpsum =

  '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Username',style: TextStyle(
                          fontSize: 16
                      )),
                      Text('13 Sep 2022',style: TextStyle(
                          fontSize: 13
                      )),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(_loremIpsum)
                ],
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 100,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.light_green,
              border: Border.all(color: Colors.grey)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    initialValue: '',
                    onChanged: (v) async{
                    },
                    onSaved: (newValue) {

                    },
                    cursorColor: AppColors.light_green,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.light_green, width: 1.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: AppColors.light_green, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: AppColors.light_green, width: 1.0),
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Add a comment...',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      prefixIcon: Icon(Icons.rate_review,color: AppColors.light_green),
                      suffixIcon: InkWell(
                          onTap: () {
                            print('ab');
                          },
                          child: Icon(Icons.send_outlined,color: AppColors.light_green)),
                      labelStyle: Get.textTheme.headline4,
                    ),
                  ),
                ),
              ],
            ),
          ),

        )
      ],
    );
  }
}
