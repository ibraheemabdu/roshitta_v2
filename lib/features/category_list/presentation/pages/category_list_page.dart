
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/category_list/presentation/widgets/single_category_list.dart';

import '../../../pharmacy_details/presentation/pages/pharmacy_details_page.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
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

                    child: Icon(
                        Icons.arrow_back_ios
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  Text(
                      'Category',
                      style:TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  )
                  ),
                  SizedBox(width: 25,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (Get.width / 150).round(),
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SingleCategoryList(),
                  SingleCategoryList(),
                  SingleCategoryList(),
                  SingleCategoryList(),
                  SingleCategoryList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}