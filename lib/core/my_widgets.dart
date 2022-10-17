import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';



Widget buildStarsSmall(int count,{String title=''})
{
  int fillStar = count;
  int blackStar = 5 - count;
  List<Icon> _icons =[];
  for(int i = 0 ; i < fillStar ; i ++)
  {
    _icons.add(
      Icon(
        Icons.star,
        color: AppColors.green,
        size: 10,
      ),
    );
  }

  for(int i = 0 ; i < blackStar ; i ++)
  {
    _icons.add(
      Icon(
        Icons.star,
        color: Color(0xff8a8a8f),
        size: 10,
      ),
    );
  }

  return  Row(
    children:

    [
      Row(
          children: _icons
      ),
      SizedBox(
        width: Get.width * 0.02,
      ),
      Text(
        title,
        style: Get.textTheme.headline6,
      ),
    ],
  );
}


Widget buildStarsLarg(int count,{String title=''})
{
  int fillStar = count;
  int blackStar = 5 - count;
  List<Icon> _icons =[];
  for(int i = 0 ; i < fillStar ; i ++)
  {
    _icons.add(
      Icon(
        Icons.star,
        color:AppColors.green,
        size: 15,
      ),
    );
  }

  for(int i = 0 ; i < blackStar ; i ++)
  {
    _icons.add(
      Icon(
        Icons.star,
        color: Color(0xff8a8a8f),
        size: 15,
      ),
    );
  }

  return  Row(
    children:

    [
      Row(
          children: _icons
      ),
      SizedBox(
        width: Get.width * 0.02,
      ),
      Text(
        title,
        style: Get.textTheme.headline6,
      ),
    ],
  );
}


Widget buildButton(@required String buttonText , _isLoading)
{
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.purple,
            AppColors.green,
          ],
        )
    ),
    alignment: Alignment.center,
    width: Get.width*0.8,
    height: Get.height*0.055,
    child: !_isLoading ?Align(
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    ):Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    ),
  );
}