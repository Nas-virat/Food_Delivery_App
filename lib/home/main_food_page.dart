import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(top:45,bottom:15),
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          children: [
                            BigText(text: "Thailand"),
                            Row(
                              children: [
                                SmallText(text:"Bangkok"),
                                Icon(Icons.arrow_drop_down_rounded)
                              ],
                            ),
                          ]),
                      Center(
                          child:Container(
                            width: 45,
                            height: 45,
                            child: Icon(Icons.search,color:Colors.lightBlueAccent),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          )
                      )
                    ],
                  )
              ),
            ),
            FoodPageBody(),
          ],
      )
    );
  }
}
