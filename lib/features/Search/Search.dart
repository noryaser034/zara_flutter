import 'package:flutter/material.dart';
import 'package:zara/core/constants/app_image.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/core/widgets/custom_circular_container.dart';
import 'package:zara/core/widgets/custom_text_form.dart';
import 'package:zara/features/Search/widget/choos_botton.dart';
import 'package:zara/features/Search/widget/filterCount.dart';
import 'package:zara/features/Search/widget/filyer_product_by_name.dart';
import 'package:zara/features/Search/widget/fliters.dart';
import 'package:zara/features/Search/widget/fliters.dart';
import 'package:zara/features/Search/widget/header_model_bottom.dart';
import 'package:zara/features/Search/widget/on_sale.dart';
import 'package:zara/features/home/data/product_model.dart';
import 'package:zara/features/home/widgets/item_card.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final focusNode = FocusNode();
  String searchKay = "";
  bool ispressed = true;

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,

        centerTitle: true,
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
                    builder: (Context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            HeaderModelBottom(titel: "Deals"),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: ispressed,
                              choose: "On Sale",
                              onTap: () {
                                setState(() {
                                  ispressed = true;
                                });
                              },
                            ),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: !ispressed,
                              choose: "Free Shipping Eligible",
                              onTap: () {
                                setState(() {
                                  ispressed = false;
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
                    builder: (Context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Clear", style: TextStyles.subtitle),
                                Text("price", style: TextStyles.title),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.close),
                                ),
                              ],
                            ),

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
                    builder: (Context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            HeaderModelBottom(titel: "Sort By"),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: ispressed,
                              choose: "Recommended",
                              onTap: () {
                                setState(() {
                                  ispressed = true;
                                });
                              },
                            ),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: !ispressed,
                              choose: "Newest",
                              onTap: () {
                                setState(() {
                                  ispressed = false;
                                });
                              },
                            ),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: !ispressed,
                              choose: "Lowest - Highest Price",
                              onTap: () {
                                setState(() {
                                  ispressed = false;
                                });
                              },
                            ),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: !ispressed,
                              choose: "Highest - Lowest Price",
                              onTap: () {
                                setState(() {
                                  ispressed = false;
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
                    builder: (Context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            HeaderModelBottom(titel: "Gender"),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: ispressed,
                              choose: "Men",
                              onTap: () {
                                setState(() {
                                  ispressed = true;
                                });
                              },
                            ),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: !ispressed,
                              choose: "Wemen",
                              onTap: () {
                                setState(() {
                                  ispressed = false;
                                });
                              },
                            ),
                            SizedBox(height: 25),
                            ChoosBotton(
                              isPressed: !ispressed,
                              choose: "Kids",
                              onTap: () {
                                setState(() {
                                  ispressed = false;
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text("53 Results Found"),
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
