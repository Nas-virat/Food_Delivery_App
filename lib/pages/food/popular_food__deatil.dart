import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text.dart';

import '../../utils/colors.dart';
import '../../widgets/icon_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.cover,
                    image: AssetImage(
                      "assets/img/chinesefood.jpg"
                    )
                  )
                ),
            )
          ),
          Positioned(
            top: 60,
            left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 330,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  ),
                  color: Colors.white
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BigText(text: "Biriani",color: Colors.black),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) => Icon(Icons.star,color:AppColors.mainColor)),
                          ),
                          SizedBox(width: 10,),
                          SmallText(text: "4.5"),
                          SizedBox(width: 10,),
                          SmallText(text: "4.5"),
                          SizedBox(width: 10,),
                          SmallText(text: "Comment"),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              color: AppColors.titleColor,
                              iconColor: AppColors.yellowColor
                          ),
                          SizedBox(width: 10,),
                          IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.7km",
                              color: AppColors.titleColor,
                              iconColor: Colors.deepOrange
                          ),
                          SizedBox(width: 10,),
                          IconAndTextWidget(
                              icon: Icons.access_time_filled_rounded,
                              text: "32min",
                              color: AppColors.titleColor,
                              iconColor: Colors.blueAccent
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      BigText(text: "Introduce",color: Colors.black),
                      SizedBox(height: 10,),
                      Expanded(
                        child: SingleChildScrollView(
                          child:  ExpandableTextWidget(
                            text: 'chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is deliciouschinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious,chinese food is delicious chinese food is delicious chinese food is delicious chinese food is delicious',)
                          ,
                        )
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
        decoration: BoxDecoration(
          color: AppColors.buttombackgroundColor,
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
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  BigText(text: "0"),
                  Icon(Icons.add,color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20,right:20,left: 20,bottom:20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor,
              ),
              child: Row(
                children: [
                  BigText(text: "\$10 | Add to cart"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
