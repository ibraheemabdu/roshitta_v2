import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../pharmacy_details/presentation/pages/pharmacy_details_page.dart';

class SingleCategoryWidget extends StatelessWidget {
  const SingleCategoryWidget({Key? key}) : super(key: key);

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
        ),
        SizedBox(width: 15),

      ],
    );
  }
}
