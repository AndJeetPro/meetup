import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetup/model/pinview.dart';
import 'package:toast/toast.dart';

class DesignPart_Two extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Design_State();
  }

}


class Design_State extends State<DesignPart_Two>{


  final databaseReference = Firestore.instance;
  QuerySnapshot results;

  double height;
  double width;
  double appHeight;
  double bottomBarHeight;
  var paddingTop = [15.0];
  var paddingLeft = [10.0,20.0,40.0];
  var paddingRight = [10.0,20.0];
  var paddingBottom = [];
  var sizeBoxHeight = [10.0,40.0];
  var fontSize = [10.0,12.0,25.0];

  var containerHeight;
  var subHeight;



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    appHeight = Platform.isAndroid?70.0:100.0;
    bottomBarHeight = Platform.isAndroid?64.0:60.0;

    print(height);
    print(width);
    print(appHeight);
    subHeight = (appHeight+sizeBoxHeight[1]+sizeBoxHeight[0]+(sizeBoxHeight[1]*2)+fontSize[2]+paddingTop[0]);
    containerHeight = height-subHeight;

    print(subHeight);
    print(containerHeight);
    print(ScreenUtil.bottomBarHeight);
    print(ScreenUtil.statusBarHeight);
    print(ScreenUtil.screenHeightDp);

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.green,
      appBar: PreferredSize(
          child: Container(
        height: appHeight,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0))
        ),
        child: Padding(
          padding: EdgeInsets.only(top: paddingTop[0], left: paddingLeft[0]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
Random rand = new Random();
int number = rand.nextInt(100);

insertData(number);
                  }),
              Container(
                width: 100,
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {}),
                  ],
                ),
              )
            ],
          ),
        ),
      ), preferredSize: Size(null, appHeight)),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: sizeBoxHeight[1],),
            Padding(
              padding: EdgeInsets.only(left: paddingLeft[2]),
              child: Row(
                children: <Widget>[
                  Text(
                    'Healthy',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize[2]),
                  ),
                  SizedBox(
                    width: sizeBoxHeight[0],
                  ),
                  Text(
                    'Food',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: fontSize[2]),
                  )
                ],
              ),
            ),
            SizedBox(height: sizeBoxHeight[1],),
            Container(
              height: containerHeight,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70.0))
              ),
              child: Padding(padding: EdgeInsets.only(left: paddingLeft[0],right: paddingRight[0]),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext cxt, int index){
return _buildFoodItem('assets/images/foodimages.jpg',
    'Food Recipes $index', 'Rs 3$index/-');
                },
              ),),
            )
          ],
        ),

      ),
      bottomNavigationBar: Container(
        height: bottomBarHeight,
        decoration: BoxDecoration(
          color: Colors.white,
//          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
        ),
        child: Padding(
          padding: EdgeInsets.only(left: paddingLeft[1],right: paddingRight[1]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: (){
                  _showToast("Comming Soon!");
                },
                child:Container(
                  height: 45.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Icon(Icons.search,color: Colors.black,),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _showToast("Item Added");
                },
                child:Container(
                  height: 45.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Icon(Icons.keyboard_hide,color: Colors.black,),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _showToast("Your Item are 1196/-");


                  getData().then((res){
                    setState(() {
                      results = res;

                      print(results.documents[0].data);

                    });
                  });

//                  QuerySnapshot res = getData();
//                  setState(() {
//                    results = res;
//                  });
                },
                child:Container(
                  height: 45.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text('Checkout',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showToast(String message){

    Toast.show(message, context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);

  }

  Widget _buildFoodItem(String imagePath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0,top: 10.0),
      child: InkWell(
        onTap: () {
//    Navigator.of(context).push(route);
        _showToast("Comming Soon!");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 70,
                    width:70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            IconButton(icon: Icon(Icons.add), color: Colors.black,onPressed: (){
_showToast("Item Added into cart are $foodName \n and the price is $price.");
            })
          ],
        ),
      ),
    );
  }

  void insertData(int number) async {

    PinView pin = PinView(number, "1232225", "9467313652");

    await databaseReference.collection("pin_meetup").document("adb").setData(pin.toJson());
//    await databaseReference.collection("pin_meetup").add(pin.toJson());

  }

  getData() async{
    return await databaseReference.collection("pin_meetup").getDocuments();
  }

}