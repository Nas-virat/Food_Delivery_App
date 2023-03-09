import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context,position){
                return _buildPageItem(position);
              }),
        ),
      ],
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left:3,right:3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: DecorationImage(
              image: new AssetImage(
                  'assets/img/chinesefood.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
            child :Container(
              height: 140,
              margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0,5),
                    )
                  ]
                ),
              child: Container(
                margin: EdgeInsets.only(top:20,left:20,right:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese Side",color: AppColors.titleColor,),
                    SizedBox(height: 15,),
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
                    SizedBox(height: 20,),
                   Row(
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
                       SizedBox(width: 10,),
                     ],
                   )
                  ],
                ),
              ),
            )
          )
      ],
    );
  }
}
