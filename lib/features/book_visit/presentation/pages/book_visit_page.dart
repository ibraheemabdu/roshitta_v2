import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/my_widgets.dart';
import '../../../../core/app_consts.dart';
import '../../../doctor_details/presentation/widgets/book_visit_widget.dart';

class BookVisitPage extends StatefulWidget {
  const BookVisitPage({Key? key}) : super(key: key);

  @override
  State<BookVisitPage> createState() => _BookVisitPageState();
}

class _BookVisitPageState extends State<BookVisitPage> {
  late Year _selectedCompany;
  List<Year> _list = Year.getYear();
  late List<DropdownMenuItem<Year>> _dropdownMenuItems;

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
    setState((){
      _selectedCompany = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
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
                Text('Book a Visit',style:TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                )),
                SizedBox(width: 25,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
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
                hintText: 'Name',
                focusColor: AppColors.light_green,
                hoverColor: AppColors.light_green,
                iconColor: AppColors.light_green,
                prefixIcon: Icon(
                    Icons.person,
                    color: AppColors.light_green),
                labelStyle: Get.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
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
                hintText: 'Age',
                focusColor: AppColors.light_green,
                hoverColor: AppColors.light_green,
                iconColor: AppColors.light_green,
                prefixIcon: Icon(
                    Icons.sentiment_very_satisfied_outlined,
                    color: AppColors.light_green),
                labelStyle: Get.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
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
                hintText: 'Phone Number',
                focusColor: AppColors.light_green,
                hoverColor: AppColors.light_green,
                iconColor: AppColors.light_green,
                prefixIcon: Icon(
                    Icons.local_phone_outlined,
                    color: AppColors.light_green),
                labelStyle: Get.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Year>(
              value: _selectedCompany,
              items: _dropdownMenuItems,
              underline: Container(),
              icon: Icon(Icons.keyboard_arrow_down),
              onChanged: (value)
              {
                onChangeDropdownItem(value!);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              height: 70,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: AppColors.light_green,
                                    border: Border.all(
                                        color: AppColors.green,
                                        width: 1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Center(child: Text('13',style: TextStyle(
                                    color: AppColors.green,
                                    fontSize: 20
                                ),)),
                              ),
                            ),
                            Positioned(
                              child: Icon(Icons.check_circle,color: AppColors.green,size: 15),
                              right: 0,
                              top: 0,

                            ),
                          ],
                        ),
                        Text('We')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('14',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Th')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('15',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Fr')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('16',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Sa')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('17',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Su')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('18',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Mo')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('19',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Tu')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('14',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Th')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('15',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Fr')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('16',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Sa')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('17',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Su')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('18',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Mo')
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text('19',style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20
                            ),)),
                          ),
                        ),
                        Text('Tu')
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Choose Time'),
                Text('your Time',
                  style: TextStyle(
                      color: Colors.grey.shade500
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8,horizontal: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      height: 40,
                      width: 100,
                      child: Center(child: Text('10:00 AM')),
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.light_green,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                                  color: AppColors.green
                              )
                          ),
                          height: 40,
                          width: 100,
                          child: Center(child: Text('10:00 AM',style: TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold
                          ),)),
                        ),
                        Positioned(
                          child: Icon(Icons.check_circle,color: AppColors.green,size: 15),
                          right: 0,
                          top: 0,

                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      height: 40,
                      width: 100,
                      child: Center(child: Text('10:00 AM')),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      height: 40,
                      width: 100,
                      child: Center(child: Text('10:00 AM')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      height: 40,
                      width: 100,
                      child: Center(child: Text('10:00 AM')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      height: 40,
                      width: 100,
                      child: Center(child: Text('10:00 AM')),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20
            ),
            child: Center(child: buildButton('Mack an appointment', false)),
          )
        ],
      ),
    );
  }
}

