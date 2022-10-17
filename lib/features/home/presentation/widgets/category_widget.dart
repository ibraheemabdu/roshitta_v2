import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/home/presentation/widgets/single_category_widget.dart';
import '../../../../core/app_consts.dart';
import '../../../category_list/presentation/pages/category_list_page.dart';
import '../../../pharmacy_details/presentation/pages/pharmacy_details_page.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Get.to(CategoryListPage());
                },
                child: Text(
                  'See all',
                  style: TextStyle(color: AppColors.green, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            height: 130,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                SingleCategoryWidget(),
                SingleCategoryWidget(),
                SingleCategoryWidget(),
                SingleCategoryWidget(),
                SingleCategoryWidget(),
                SingleCategoryWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}