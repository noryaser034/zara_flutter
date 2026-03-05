// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_text_form.dart';
import 'package:zara/features/Search/widget/choos_botton.dart';
import 'package:zara/features/Search/widget/filterCount.dart';
import 'package:zara/features/Search/widget/filyer_product_by_name.dart';
import 'package:zara/features/Search/widget/fliters.dart';
import 'package:zara/features/Search/widget/header_model_bottom.dart';
import 'package:zara/features/Search/widget/on_sale.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/home/pages/home_screen.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final focusNode = FocusNode();
  String searchKay = "";
  String ispressedONSale = "On Sale";
  String ispressedSortBy = "Recommended";
  String ispressedMan = "Men";
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(AppImages.arrowBack),
          onPressed: () {
            pushReplacement(context, const HomeScreen());
          },
        ),
        titleSpacing: 0,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.background,

        title: Hero(
          tag: "search",
          child: Material(
            color: Colors.transparent,
            child: CustomTextFormField(
              prefixIcon: Icon(Icons.search),
              hintText: "search",
              focusNode: focusNode,
              onChange: (value) {
                setState(() {
                  searchKay = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 1)],
      ),
      body: Column(
        children: [
          SizedBox(height: 27),
          Row(
            children: [
              SizedBox(width: 20),
              FliterCount(),
              SizedBox(width: 7),
              OnSale(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setModalState) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                HeaderModelBottom(titel: "Deals"),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed: ispressedONSale == "On Sale",
                                  choose: "On Sale",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedONSale = "On Sale";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed:
                                      ispressedONSale ==
                                      "Free Shipping Eligible",
                                  choose: "Free Shipping Eligible",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedONSale =
                                          "Free Shipping Eligible";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 7),
              Fliters(
                title: 'Price',
                image: AppImages.arrowDown,
                width: 65,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            HeaderModelBottom(titel: "Price"),
                            SizedBox(height: 25),
                            CustomTextFormField(hintText: "Min"),
                            SizedBox(height: 25),
                            CustomTextFormField(hintText: "Max"),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 7),
              Fliters(
                title: 'Sort By',
                image: AppImages.arrowDown,
                color: AppColors.grayOrder,
                width: 80,
                textcolor: AppColors.blackcolor,
                imagecolor: AppColors.blackcolor,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setModalState) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                HeaderModelBottom(titel: "Sort By"),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed: ispressedSortBy == "Recommended",
                                  choose: "Recommended",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedSortBy = "Recommended";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed: ispressedSortBy == "Newest",
                                  choose: "Newest",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedSortBy = "Newest";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed:
                                      ispressedSortBy ==
                                      "Lowest - Highest Price",
                                  choose: "Lowest - Highest Price",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedSortBy =
                                          "Lowest - Highest Price";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed:
                                      ispressedSortBy ==
                                      "Highest - Lowest Price",
                                  choose: "Highest - Lowest Price",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedSortBy =
                                          "Highest - Lowest Price";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 7),
              Fliters(
                title: "Man",
                image: AppImages.arrowDown,
                width: 70,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setModalState) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                HeaderModelBottom(titel: "Gender"),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed: ispressedMan == "Men",
                                  choose: "Men",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedMan = "Men";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed: ispressedMan == "Wemen",
                                  choose: "Wemen",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedMan = "Wemen";
                                    });
                                  },
                                ),
                                SizedBox(height: 25),
                                ChoosBotton(
                                  isPressed: ispressedMan == "Kids",
                                  choose: "Kids",
                                  onTap: () {
                                    setModalState(() {
                                      ispressedMan = "Kids";
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "${getlength(searchKay)} Results Found",
                style: TextStyles.body,
              ),
            ),
          ),
          Expanded(
            child: FliterProductByName(products: getProductsByName(searchKay)),
          ),
        ],
      ),
    );
  }
}

List<ProductModel> getProductsByName(String searchKay) {
  List<ProductModel> filterProducts = [];
  for (var product in allProducts) {
    if (product.name.toLowerCase().contains(searchKay)) {
      filterProducts.add(product);
    }
  }
  return filterProducts;
}

int getlength(String searchKay) {
  List<ProductModel> filterProductslens = [];
  for (var product in allProducts) {
    if (product.name.toLowerCase().contains(searchKay)) {
      filterProductslens.add(product);
    }
  }
  return filterProductslens.length;
}
