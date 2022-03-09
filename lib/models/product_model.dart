import 'dart:developer';

class ProductModel{
  String? productName,
      productID;
  List? productImages;


  ProductModel({
    this.productName,
    this.productID,
    this.productImages,
  });


  factory ProductModel.fromMap(Map<String, dynamic> map){
    log('message');
    return
      ProductModel(
          productID: map['productID'],
          productImages: map['userImage'],
          productName: map['userName'],
      );
  }
}