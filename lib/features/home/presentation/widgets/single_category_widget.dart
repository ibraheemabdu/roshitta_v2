import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:rosheta/features/doctor_list/presentation/pages/doctor_list_page.dart';
import 'package:rosheta/features/pharmacy_list/presentation/pages/pharmacy_list_page.dart';
import '../../../hospitals_list/presentation/pages/hospitals_list_page.dart';
import '../../../lap_list/presentation/pages/lap_list_page.dart';
import '../../../nutritionists_list/presentation/pages/nutritionists_list_page.dart';
import '../../../pharmacy_details/presentation/pages/pharmacy_details_page.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SingleCategoryWidget extends StatelessWidget {

  var data ;


  SingleCategoryWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            print(data);
            if(data['type'].toString() == 'doctors')
            {
              Get.to(DoctorList());
            }
            else if(data['type'].toString() == 'pharmacies')
            {
              Get.to(PharmacyList());
            }
            else if(data['type'].toString() == 'hospitals')
            {
              Get.to(HospitalsList());
            }
            else if(data['type'].toString() == 'labs')
            {
              Get.to(LapList());
            }
            else if(data['type'].toString() == 'nutritionists')
            {
              Get.to(NutritionistsList());
            }
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
                CachedNetworkImage(imageUrl: data['image'],height: 40,width: 40,),
                Column(
                  children: [
                    Text(data['name'],
                        style: TextStyle(
                          fontSize: 18,
                        ),
                    maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(data['count'].toString() + ' Specialities',
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
