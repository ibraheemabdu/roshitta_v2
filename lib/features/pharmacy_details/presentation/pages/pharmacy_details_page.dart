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
  @override
  _PharmacyDetailsPagePageState createState() =>
      _PharmacyDetailsPagePageState();
}

class _PharmacyDetailsPagePageState extends State<PharmacyDetailsPage> {
  final _headerStyle = const TextStyle(
      color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600);

  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  List<Year> _list = Year.getYear();
  late List<DropdownMenuItem<Year>> _dropdownMenuItems;
  late Year _selectedCompany;
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_list);
    _selectedCompany = _dropdownMenuItems[0].value!;
    super.initState();
  }

  List<DropdownMenuItem<Year>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Year>> items = [];
    for (Year company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Year selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
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
                    Text('Dr.Hilal Abughoush', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('IVF and Infertility'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Fees: 25,00', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    buildStarsLarg(3)
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alshmysani , jaber ben hayyn',
                        style: TextStyle(fontSize: 12)),
                    Text('St.bud #65', style: TextStyle(fontSize: 12)),
                  ],
                ),
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
            child: Text('''Lorem ipsum is typically a corrupted version
             of 'De finibus bonorum et malorum',
              a 1st century BC text by the Roman statesman 
              and philosopher Cicero, with words altered, 
              added, and removed to make it nonsensical and 
              improper Latin. Lorem ipsum is typically 
              a corrupted version
              of 'De finibus bonorum et malorum',
              a 1st century BC text by the Roman statesman 
              and philosopher Cicero, with words altered, 
              added, and removed to make it nonsensical and 
              improper Latin.''',
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
              items: [
                'assets/images/splash_background.png',
                'assets/images/logo.png',
                'assets/images/engin.png']
                  .map<Widget>(
                    (item) => Container(
                      width: Get.width - 110,
                      child: Image.asset(item),
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
