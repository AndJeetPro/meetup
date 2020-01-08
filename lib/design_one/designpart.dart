import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PracticeDesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PracticeDesignState();
  }
}

class PracticeDesignState extends State<PracticeDesign> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0XFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {}),
                Container(
                  width: 125,
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
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25.0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75.0),
                )),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 1', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 2', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 3', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 4', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                        _buildFoodItem('assets/images/foodimages.jpg',
                            'Food Recipes 5', 'Rs 34/-'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10,bottom: 30,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 55.0,
                        width: 60.0,
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
                      Container(
                        height: 55.0,
                        width: 60.0,
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
                      Container(
                        height: 55.0,
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

  Widget _buildFoodItem(String imagePath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0,top: 10.0),
      child: InkWell(
        onTap: () {
//    Navigator.of(context).push(route);
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
                    width: 10.0,
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
            IconButton(icon: Icon(Icons.add), color: Colors.black,onPressed: (){

            })
          ],
        ),
      ),
    );
  }
}
