import 'dart:ui';
import 'package:accordion/accordion.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:rosheta/core/my_widgets.dart';
import '../../../../core/partial_painter.dart';
import '../../../home/presentation/pages/home_page.dart';
import 'package:get/get.dart';

class PharmacyDetailsPage extends StatefulWidget {

  var data ;

  PharmacyDetailsPage(this.data);

  @override
  _PharmacyDetailsPagePageState createState() =>
      _PharmacyDetailsPagePageState();
}

class _PharmacyDetailsPagePageState extends State<PharmacyDetailsPage> {
  final _headerStyle = const TextStyle(
      color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600);


  @override
  void initState() {

    super.initState();
  }





  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Get.back();
                  },
                ),
                Text(
                  'Pharmacy Information',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 130,
                    width: 130,
                    child: CustomPaint(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.network(
                          widget.data['image'].toString(),
                          fit: BoxFit.fill,
                        ),
                      ),
                      painter: PartialPainter(
                          radius: 10,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              AppColors.purple,
                              AppColors.green,
                            ],
                          ),
                          strokeWidth: 3),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: Get.width - 170,
                        child: Text(widget.data['username'].toString(), style: TextStyle(fontSize: 20))),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.data['phone'].toString()),
                        SizedBox(
                          height: 5,
                        ),
                        Text(widget.data['email'].toString(), style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    buildStarsLarg(widget.data['reviews'])
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.grey.shade700,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(widget.data['address'].toString(),
                    style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Information', style: TextStyle(fontSize: 20)),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(widget.data['institution_description'].toString(),
                style: TextStyle(fontSize: 14, color: AppColors.gray)),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Gallery', style: TextStyle(fontSize: 20)),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CarouselSlider(
              items: widget.data['images']
                  .map<Widget>(
                    (item) => Container(
                      width: Get.width - 110,
                      child: Image.network(item['image'].toString(),fit: BoxFit.fill,),
                    ),
                  ).toList(),
              carouselController: buttonCarouselController,
              options: CarouselOptions(

                onPageChanged: (index, reason) {},
                autoPlay: true,
                viewportFraction: 0.5,
                aspectRatio: 2,
                initialPage: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Year {
  int id;
  String name;

  Year(this.id, this.name);

  static List<Year> getYear() {
    return <Year>[
      Year(1, 'August,2022'),
      Year(2, 'September,2022'),
      Year(3, 'October,2022'),
      Year(4, 'November,2022'),
    ];
  }
}
