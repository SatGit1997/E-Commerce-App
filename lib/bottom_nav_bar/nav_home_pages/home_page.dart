import 'package:e_commerce_app/bottom_nav_bar/nav_home_pages/item_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../decor/ui_helper.dart';

class HomePage extends StatelessWidget{
  List<Map<String,dynamic>> mCat= [
    {
    "img": "assets/images/beauty.png",
    "catName": "Beauty"
  },
    {
      "img": "assets/images/electronic.png",
      "catName": "Electronic"
    },
    {
      "img": "assets/images/fashion_2.png",
      "catName": "Fashion"
    },
    {
      "img": "assets/images/shoes.png",
      "catName": "Shoes"
    },
    {
      "img": "assets/images/kids_wear1.png",
      "catName": "Kids Wear"
    },
    {
      "img": "assets/images/jewellery.png",
      "catName": "jewellery"
    },
  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade200
                    ),
                      child: Icon(Icons.menu_rounded)),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade200
                    ),
                      child: Icon(Icons.notifications_none_rounded)),

                ],
              ),
              SizedBox(height: 20,),

              SizedBox(height: 50,
                child: TextField(
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.grey.shade200,
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                   borderRadius: BorderRadius.circular(32)),
                     prefixIcon: Icon(Icons.search_rounded),

                   hintText: 'Search...',
                   suffixText: "|",suffixStyle: TextStyle(fontWeight: FontWeight.w800),
                   suffixIcon: Icon(Icons.grid_view)
                 ),

                ),
              ),
              SizedBox(height: 20,),

              Stack(
                children:[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        image: DecorationImage(image: AssetImage("assets/images/shop_shose_pic.png"))

                    ),

                  ),
                  Positioned(bottom: 22,left: 8,
                    child: Container(
                        width: 110,
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffff650e)
                        ),
                        child: Center(child: Text("Shop now",
                          style: TextStyle(color: Colors.white,fontSize: 15),))
                    ),
                  ),

                ]

              ),
              SizedBox(height: 20,),
              ///first listView
              /*Expanded(
                child: ListView(scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mCat.map((element){
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height:50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,

                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade200,
                                            blurRadius: 1,
                                            offset: Offset(0.5,0.5),
                                            spreadRadius: 0
                                        )
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage(element['img']),fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                mSpacer(mWidth: 5),

                                SizedBox(width: 10,),
                                mSpacer(),
                              ],
                            ),
                            Text(element["catName"],style: TextStyle(fontSize: 14),),

                          ],
                        );

                      }).toList(),
                    ),

                  ],
                ),
              ),*/

              /// second listView
              SizedBox(
                height: 75,
                child: ListView(scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mCat.map((element){
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(element['img']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(element['catName'],
                                textAlign:
                                TextAlign.center, // To center-align the text
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              mSpacer(),

              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Text("See all",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),

              Expanded(flex: 4,
                child: Container(
                  height: 100,
                  child: GridView.count(

                      crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 4/5,

                    children: [
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemViewPage()));
                      },
                        child:
                        Stack(
                          children: [
                          Container(
                          width: 190,
                          height:230,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.grey.shade200,
                            boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 1,
                                    offset: Offset(0.5,0.5),
                                    spreadRadius: 0
                                )
                              ],
                          ),
                        ),
                            Column(crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(13),
                                    bottomLeft: Radius.circular(10)),
                                      color: Color(0xffff650e)
                                  ),
                                  child: Icon(Icons.favorite_outline,color: Colors.white,),
                                ),
                                Center(
                                  child: SizedBox(height: 120,
                                      width: 120,
                                      child: Image(image: AssetImage("assets/images/shop_earbud_pic.png"),fit: BoxFit.fill)),
                                ),
                                Align(alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      mSpacer(mWidth: 5),
                                      Text('Wireless Headphones',
                                          style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.w600
                                          )),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    mSpacer(mWidth: 5),
                                    Text('\$120.00',
                                      style: TextStyle(
                                        fontSize: 17,fontWeight: FontWeight.w600
                                      ),),
                                    mSpacer(mWidth: 15),
                                    Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Colors.black,width: 1)
                                        ),
                                        child:
                                        Center(
                                          child: SizedBox(
                                            width: 15,
                                            height:15,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.black,
                                            ),
                                          ),
                                        )
                                      ),
                                    mSpacer(mWidth: 5),
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.blue
                                      ),
                                    ),
                                    mSpacer(mWidth: 5),
                                    Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.deepOrange
                              ),
                            ),
                                    mSpacer(mWidth: 5),
                                    Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.grey)

                                    ),
                                    child: Center(
                                        child: Text('+2',
                                          style: TextStyle(fontSize: 10,color: Colors.grey),)),
                                  ),
                                    mSpacer(mWidth: 5),


                          ],
                        ),
                                mSpacer(mHeight: 5)
                              ],
                            ),
                            ]
                        ),
                      ),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemViewPage()));
                      },
                        child:
                        Stack(
                            children: [
                              Container(
                                width: 190,
                                height:230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.grey.shade200,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 1,
                                        offset: Offset(0.5,0.5),
                                        spreadRadius: 0
                                    )
                                  ],
                                ),
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(13),
                                            bottomLeft: Radius.circular(10)),
                                        color: Color(0xffff650e)
                                    ),
                                    child: Icon(Icons.favorite_outline,color: Colors.white,),
                                  ),
                                  Center(
                                    child: SizedBox(height: 120,
                                        width: 120,
                                        child: Image(image: AssetImage("assets/images/shop_ht_rbg1.png"),fit: BoxFit.fill)),
                                  ),
                                  Align(alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        mSpacer(mWidth: 5),
                                        Text('Home Theatre',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.w600
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      mSpacer(mWidth: 5),
                                      Text('\$120.00',
                                        style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w600
                                        ),),
                                      mSpacer(mWidth: 15),
                                      Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Colors.black,width: 1)
                                          ),
                                          child:
                                          Center(
                                            child: SizedBox(
                                              width: 15,
                                              height:15,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.black,
                                              ),
                                            ),
                                          )
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.blue
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.deepOrange
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Colors.grey)

                                        ),
                                        child: Center(
                                            child: Text('+2',
                                              style: TextStyle(fontSize: 10,color: Colors.grey),)),
                                      ),
                                      mSpacer(mWidth: 5),


                                    ],
                                  ),
                                  mSpacer(mHeight: 5)
                                ],
                              ),
                            ]
                        ),
                      ),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemViewPage()));
                      },
                        child:
                        Stack(
                            children: [
                              Container(
                                width: 190,
                                height:230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.grey.shade200,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 1,
                                        offset: Offset(0.5,0.5),
                                        spreadRadius: 0
                                    )
                                  ],
                                ),
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(13),
                                            bottomLeft: Radius.circular(10)),
                                        color: Color(0xffff650e)
                                    ),
                                    child: Icon(Icons.favorite_outline,color: Colors.white,),
                                  ),
                                  Center(
                                    child: SizedBox(height: 120,
                                        width: 120,
                                        child: Image(image: AssetImage("assets/images/gold_jewell.png"),fit: BoxFit.fill)),
                                  ),
                                  Align(alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        mSpacer(mWidth: 5),
                                        Text('Gold Jewellery',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.w600
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      mSpacer(mWidth: 5),
                                      Text('\$420.00',
                                        style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w600
                                        ),),
                                      mSpacer(mWidth: 30),
                                      Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Colors.black,width: 1)
                                          ),
                                          child:
                                          Center(
                                            child: SizedBox(
                                              width: 15,
                                              height:15,
                                              child: CircleAvatar(
                                                backgroundColor: Color(0xffdcb031),
                                              ),
                                            ),
                                          )
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Color(0xffC0C0C0)
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Colors.grey)

                                        ),
                                        child: Center(
                                            child: Text('+2',
                                              style: TextStyle(fontSize: 10,color: Colors.grey),)),
                                      ),
                                      mSpacer(mWidth: 5),


                                    ],
                                  ),
                                  mSpacer(mHeight: 5)
                                ],
                              ),
                            ]
                        ),
                      ),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemViewPage()));
                      },
                        child:
                        Stack(
                            children: [
                              Container(
                                width: 190,
                                height:230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.grey.shade200,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 1,
                                        offset: Offset(0.5,0.5),
                                        spreadRadius: 0
                                    )
                                  ],
                                ),
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(13),
                                            bottomLeft: Radius.circular(10)),
                                        color: Color(0xffff650e)
                                    ),
                                    child: Icon(Icons.favorite_outline,color: Colors.white,),
                                  ),
                                  Center(
                                    child: SizedBox(height: 120,
                                        width: 120,
                                        child: Image(image: AssetImage("assets/images/shop_kids_wrbg2.png"),fit: BoxFit.fill)),
                                  ),
                                  Align(alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        mSpacer(mWidth: 5),
                                        Text('Kids Wear',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.w600
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      mSpacer(mWidth: 5),
                                      Text('\$40.00',
                                        style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w600
                                        ),),
                                      mSpacer(mWidth: 15),
                                      Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Colors.black,width: 1)
                                          ),
                                          child:
                                          Center(
                                            child: SizedBox(
                                              width: 15,
                                              height:15,
                                              child: CircleAvatar(
                                                backgroundColor: Color(0xffc37a95),
                                              ),
                                            ),
                                          )
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.blue
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.deepOrange
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Colors.grey)

                                        ),
                                        child: Center(
                                            child: Text('+2',
                                              style: TextStyle(fontSize: 10,color: Colors.grey),)),
                                      ),
                                      mSpacer(mWidth: 5),


                                    ],
                                  ),
                                  mSpacer(mHeight: 5)
                                ],
                              ),
                            ]
                        ),
                      ),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemViewPage()));
                      },
                        child:
                        Stack(
                            children: [
                              Container(
                                width: 190,
                                height:230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.grey.shade200,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 1,
                                        offset: Offset(0.5,0.5),
                                        spreadRadius: 0
                                    )
                                  ],
                                ),
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(13),
                                            bottomLeft: Radius.circular(10)),
                                        color: Color(0xffff650e)
                                    ),
                                    child: Icon(Icons.favorite_outline,color: Colors.white,),
                                  ),
                                  Center(
                                    child: SizedBox(height: 120,
                                        width: 120,
                                        child: Image(image: AssetImage("assets/images/shop_watch_rbg.png"),fit: BoxFit.fill)),
                                  ),
                                  Align(alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        mSpacer(mWidth: 5),
                                        Text('Mens Watch',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.w600
                                            )),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      mSpacer(mWidth: 5),
                                      Text('\$120.00',
                                        style: TextStyle(
                                            fontSize: 17,fontWeight: FontWeight.w600
                                        ),),
                                      mSpacer(mWidth: 15),
                                      Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Colors.black,width: 1)
                                          ),
                                          child:
                                          Center(
                                            child: SizedBox(
                                              width: 15,
                                              height:15,
                                              child: CircleAvatar(
                                                backgroundColor: Color(0xff425380),
                                              ),
                                            ),
                                          )
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.blue
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.deepOrange
                                        ),
                                      ),
                                      mSpacer(mWidth: 5),
                                      Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Colors.grey)

                                        ),
                                        child: Center(
                                            child: Text('+2',
                                              style: TextStyle(fontSize: 10,color: Colors.grey),)),
                                      ),
                                      mSpacer(mWidth: 5),


                                    ],
                                  ),
                                  mSpacer(mHeight: 5)
                                ],
                              ),
                            ]
                        ),
                      ),



                    ],

                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}