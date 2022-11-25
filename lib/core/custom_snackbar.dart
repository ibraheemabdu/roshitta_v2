import 'package:flutter/material.dart';
import 'package:get/get.dart';


Future customSnackBarWidget(Map response,{code = '',})  async {



  List<Widget> entries = [];
  print('res0');

  var isSuccess = false;
  print('res1');
  //
  // if(code != 200){
  //   int i = 0;
  //   entries = addErrorEntries(errors: response['errors']);
  //
  // }else {
    print('res2');

    isSuccess = true;
    entries.add(
        SizedBox(
          width: Get.width * .60,
          child: Text(
            response['messages'].toString() ,
            style: Get.textTheme.headline6?.copyWith(color: Colors.white),
          ),
        ));

  //}

  if(response['status'] == false)
    {
      isSuccess = false;
    }
  Get.snackbar(
    response['messages'].toString(),
    response['messages'].toString(),
    snackPosition: SnackPosition.TOP,
    titleText: SizedBox(),
    margin: EdgeInsets.only(top: 10,left: 10,right: 10),
    messageText: Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  isSuccess ? Icons.check_circle : Icons.error,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: entries),
              ],
            ),
          ],
        ),
      ),
    ),
    backgroundColor: isSuccess ? Color(0xff34BE82) : Colors.redAccent,
    colorText: Colors.white,
  );
}

addErrorEntries({errors}){

  List<Widget> entries=List.empty(growable: true);
  errors.forEach((k, v) {
    v.forEach((i) {
      entries.add(
        SizedBox(
          width: Get.width * .60,
          child: Text(
            i,
            style: Get.textTheme.headline6?.copyWith(color: Colors.white),
          ),
        ),
      );
    });
  });

  return entries;
}