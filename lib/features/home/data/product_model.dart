import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';

class ProductModel {
  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    this.oldPrice,
    required this.tagKey,
  });
  final String name;
  final double price;
  final double? oldPrice; // ← nullable
  final String tagKey;
  final String image;
}

List<ProductModel> bestSelling = [
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Harrington Jacket',
    price: 148.00,
    image: AppImages.oilJacket,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Max Cirro Men\'s Slides',
    price: 55,
    oldPrice: 100.97,
    image: AppImages.slipper,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodiet',
    price: 128.94,
    image: AppImages.purbleHoodie,
  ),
];
List<ProductModel> newIn = [
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodiet',
    price: 128.94,
    image: AppImages.purbleHoodie,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Harrington Jacket',
    price: 148.00,
    image: AppImages.oilJacket,
  ),
];
List<ProductModel> hoodies = [
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Pullover Skate Hoodie',
    price: 150.97,
    image: AppImages.blackHoodies,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Pullover Skate Hoodie pro xxl',
    price: 150.97,
    image: AppImages.blackHoodies,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie max xxl',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Skate Hoodie',
    price: 130,
    image: AppImages.yellowHoodies,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodie',
    price: 128.97,
    image: AppImages.purbleHoodie,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodie Pro xxxl',
    price: 128.97,
    image: AppImages.purbleHoodie,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Skate Hoodie max pro',
    price: 130,
    image: AppImages.yellowHoodies,
  ),
];
List<ProductModel> allProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Harrington Jacket new',
    price: 148.00,
    image: AppImages.oilJacket,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Max Cirro Men\'s Slides new',
    price: 55,
    oldPrice: 100.97,
    image: AppImages.slipper,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie new',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodiet new ',
    price: 128.94,
    image: AppImages.purbleHoodie,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Pullover Skate Hoodie',
    price: 150.97,
    image: AppImages.blackHoodies,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Pullover Skate Hoodie pro xxl',
    price: 150.97,
    image: AppImages.blackHoodies,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Fleece Pullover Hoodie max xxl',
    price: 100,
    image: AppImages.greenTraining,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Skate Hoodie',
    price: 130,
    image: AppImages.yellowHoodies,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodie',
    price: 128.97,
    image: AppImages.purbleHoodie,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Men\'s Ice-Dye Pullover Hoodie Pro xxxl',
    price: 128.97,
    image: AppImages.purbleHoodie,
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    name: 'Fleece Skate Hoodie max pro',
    price: 130,
    image: AppImages.yellowHoodies,
  ),
  ProductModel(
    name: 'Club Fleece Mens Jacket',
    price: 56.97,
    image: AppImages.blackManTraining,
    tagKey: UniqueKey().toString(),
  ),
  ProductModel(
    name: 'Therma Fit Puffer Jacket',
    price: 280,
    image: AppImages.pumbJacket,
    tagKey: UniqueKey().toString(),
  ),

  ProductModel(
    name: 'Skate Jacket',
    price: 150,
    image: AppImages.skateJacket,
    tagKey: UniqueKey().toString(),
  ),
];
