import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/expandable_text.dart';
import 'package:get/get.dart';

import '../../widgets/big_text.dart';

class RecommendFoodDetail extends StatelessWidget {
  const RecommendFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear,),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(size: 26,text: "Chinese Side")
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5, bottom:10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.red,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/img/chinesefood.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious",),
                  margin: EdgeInsets.only(left: 12,right:12),
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 10,
              bottom: 10
            ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(backgroundColor: AppColors.mainColor,iconColor:Colors.white,icon: Icons.remove,size:50,iconSize: 26,),
                BigText(text: "\$12.88"+"X"+"0"),
                AppIcon(backgroundColor: AppColors.mainColor,iconColor:Colors.white,icon: Icons.add,size: 50,iconSize: 26,),
              ],
            )
          ),
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
            decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20*2),
                  topRight: Radius.circular(20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20,right:20,left: 20,bottom:20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: AppIcon(icon: Icons.favorite,iconColor:AppColors.mainColor,iconSize: 30,),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right:20,left: 20,bottom:20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainColor,
                  ),
                  child: Row(
                    children: [
                      BigText(text: "\$10 | Add to cart",color: Colors.white,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
