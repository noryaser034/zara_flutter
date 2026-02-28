import 'package:flutter/material.dart';
import 'package:zara/core/functions/navigation.dart';
import 'package:zara/core/styles/color.dart';
import 'package:zara/core/styles/text_style.dart';
import 'package:zara/features/profile/profile_view.dart';
import 'package:zara/features/wish_list/wish_list_data.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popTo(context, ProfileView());
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Center(child: Text('Wishlist', style: TextStyles.title)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 3 / 4,
          ),

          itemCount: favorite.length,
          itemBuilder: (BuildContext context, int i) => GestureDetector(
            onTap: () {},
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: AppColors.graycolor,
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${favorite[i].itemName}'),
                    Text('\$ ${favorite[i].price}'),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('${favorite[i].img}'),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/heart.png',
                        color: AppColors.errorcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
