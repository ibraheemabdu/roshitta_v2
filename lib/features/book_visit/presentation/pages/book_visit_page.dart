import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/book_visit/data/datasources/api.dart';
import '../../../../core/app_consts.dart';
import '../../../../core/helper_clasess/shared_preferences_helper.dart';
import '../../../bottom_nav/presentation/pages/bottom_nav_page.dart';
import '../../../doctor_details/presentation/widgets/book_visit_widget.dart';

class BookVisitPage extends StatefulWidget {
  var doctor_name ;
  var date ;
  var month ;
  var time ;
  var user_id;


  BookVisitPage(this.doctor_name,this.date,this.month,this.time,this.user_id);

  @override
  State<BookVisitPage> createState() => _BookVisitPageState();
}

class _BookVisitPageState extends State<BookVisitPage> {

  @override
  void initState() {

    _skip();
    super.initState();
  }

  final myController_name = TextEditingController();
  final myController_age = TextEditingController();
  final myController_phone = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var tok ;
  _skip() async {

     tok = await Utilities.getToken();

     print('tok tok tok tok tok tok tok tok tok tok');
     return tok ;

  }
  bool _isLoading = false ;
  _bookVisitData() async
  {
    setState(() {
      _isLoading = true ;
    });

     var result = await bookVisitData(
      name: myController_name.text,
      age: myController_age.text,
      phone: myController_phone.text,
      time: widget.time,
      date: widget.date.toString() + ' ' + widget.month.toString(),
      user_id: widget.user_id,
        lang: 'en'
    );

    setState(() {
      _isLoading = false ;
    });

    if(result['status'] == true)
    {
      Get.offAll(BottomNavPage(0));
    }

  }
  @override
  Widget build(BuildContext context) {

    print('adfsa 12321412') ;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: tok.toString() == '' ? Container() : Form(
        key: _formKey,
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
                controller: myController_name,
                onChanged: (v) async{
                },
                onSaved: (newValue) {

                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
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
                controller: myController_age,
                onChanged: (v) async{
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
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
                controller: myController_phone,
                onChanged: (v) async{
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
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
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
              child: Text(
                  'Confirm your appointment with '+ widget.doctor_name +
                      ' On  date ' + widget.date + ' '+ widget.month +' at time ' +widget.time,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700
              ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20
              ),
              child: InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _bookVisitData();
                    }
                  },
                  child: Center(child: buildButton('Make an appointment', _isLoading))),
            )
          ],
        ),
      ),
    );
  }
}

