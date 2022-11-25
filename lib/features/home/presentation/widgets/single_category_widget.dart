import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/app_consts.dart';
import '../../../pharmacy_details/presentation/pages/pharmacy_details_page.dart';

class SingleCategoryWidget extends StatelessWidget {

  var title ;
  var num ;


  SingleCategoryWidget(this.title, this.num);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.to(PharmacyDetailsPage());
          },
          child: Container(
            width: 130,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1,color: Colors.grey)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 5,
                ),
                Icon(
                  FontAwesomeIcons.mortarPestle,
                  color: AppColors.light_green,
                ),
                Column(
                  children: [
                    Text(title,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                    maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(num + ' Specialities',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
