import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../pharmacy_details/presentation/pages/pharmacy_details_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleCategoryList extends StatelessWidget {
  const SingleCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(PharmacyDetailsPage());
        },
        child: Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 5,
              ),
              Icon(
                FontAwesomeIcons.mortarPestle,
                color: Colors.grey.shade700,
              ),
              Column(
                children: [
                  Text('Pharmacy',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  SizedBox(height: 5),
                  Text('403 Specialities',
                      style: TextStyle(
                          fontSize: 12, color: Colors.grey)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      );
  }
}
