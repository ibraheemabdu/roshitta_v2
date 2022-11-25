import 'dart:io';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';

import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/var.dart';
getDoctoData(lang) async {



  final data = await  NetworkHelper.post(
    url:'api/doctors/doctorList',deCoded: true,
    body: {
      'api_password':PublicVariables.api_password,
      'device_id':await PublicVariables.getId(),
      'lang':lang
    },
    headers: {
    },
    withAuthToken: true,
  );



  return data ;
}



class SearchProduct {

  final String id;
  final String name;
  final String product_type;
  final String featured_flag;
  final String part_number;
  final String main_description;
  final String sub_description;
  final String size;
  final String weight;
  final String sale_price;
  final String on_sale_price_status;
  final String on_sale_price;
  final String quantity_available;
  final String quantity_limit;
  final String image;
  final String color;
  final String quality;
  final String status;
  final String rate_value;
  final String count_rate;
  final String is_added_to_wish_list;
  final List product_images;
  final List properties;
  final List Suitable_models;

  SearchProduct(
      {
        required this.id,
        required this.name,
        required this.product_type,
        required this.featured_flag,
        required this.part_number,
        required this.main_description,
        required this.sub_description,
        required this.size,
        required this.weight,
        required this.sale_price,
        required this.on_sale_price_status,
        required this.on_sale_price,
        required this.quantity_available,
        required this.quantity_limit,
        required this.image,
        required this.color,
        required this.quality,
        required this.status,
        required this.rate_value,
        required this.count_rate,
        required this.is_added_to_wish_list,
        required this.product_images,
        required this.properties,
        required this.Suitable_models,
      });

  factory SearchProduct.fromJson(Map<String, dynamic> json) {
    return SearchProduct(
      id: json['id'].toString(),
      name: json['name'].toString(),
      product_type: json['product_type'].toString(),
      featured_flag: json['featured_flag'].toString(),
      part_number: json['part_number'].toString(),
      main_description: json['main_description'].toString(),
      sub_description: json['sub_description'].toString(),
      size: json['size'].toString(),
      weight: json['weight'].toString(),
      sale_price: json['sale_price'].toString(),
      on_sale_price_status: json['on_sale_price_status'].toString(),
      on_sale_price: json['on_sale_price'].toString(),
      quantity_available: json['quantity_available'].toString(),
      quantity_limit: json['quantity_limit'].toString(),
      image: json['image'].toString(),
      color: json['color'].toString(),
      quality: json['quality'].toString(),
      status: json['status'].toString(),
      rate_value: json['rate_value'].toString(),
      count_rate: json['count_rate'].toString(),
      is_added_to_wish_list: json['is_added_to_wish_list'].toString(),
      product_images: json['product_images']as List,
      properties: json['properties']as List,
      Suitable_models: json['Suitable_models']as List,


      // review_user_of_product: json['review_user_of_product'].toString(),
    );
  }



  Map toJson() => {
    'id': id,
    'name': name,
    'product_type': product_type,
    'featured_flag': featured_flag,
    'part_number': part_number,
    'main_description': main_description,
    'sub_description': sub_description,
    'size': size,
    'weight': weight,
    'sale_price': sale_price,
    'on_sale_price_status': on_sale_price_status,
    'on_sale_price': on_sale_price,
    'quantity_available': quantity_available,
    'quantity_limit': quantity_limit,
    'image': image,
    'color': color,
    'quality': quality,
    'status': status,
    'rate_value': rate_value,
    'count_rate': count_rate,
    'is_added_to_wish_list': is_added_to_wish_list,
    'product_images': product_images,
    'properties': properties,
    'Suitable_models': Suitable_models,
  };
}
