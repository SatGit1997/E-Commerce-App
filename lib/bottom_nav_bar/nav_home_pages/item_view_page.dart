import 'package:e_commerce_app/decor/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemViewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Stack(
            children: [
                Align(alignment: Alignment.bottomLeft,
                  child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.black
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mSpacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 125,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.white),
                            color: Colors.black
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("-",style: TextStyle(fontSize: 25,color: Colors.white),),
                            Text("1",style: TextStyle(fontSize: 18,color: Colors.white),),
                            Text("+",style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      ),

                      Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 190,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffff650e)
                          ),
                          child: Center(child: Text("Add to Cart",
                            style: TextStyle(color: Colors.white,fontSize: 20),))
                      ),

                    ],
                  ),
                                ),
                ),
              SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(alignment: Alignment.topLeft,
                            child: InkWell(onTap: (){
                              Navigator.pop(context);
                            },
                              child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.grey.shade200
                                  ),
                                  child: Icon(Icons.arrow_back_rounded)),
                            ),
                          ),
                        ),
                        Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.shade200
                            ),
                            child: Icon(Icons.share_outlined)),
                        mSpacer(),
                        Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.shade200
                            ),
                            child: Icon(Icons.favorite_outline)),
                
                      ],
                    ),
                    /*Row(
                    children: [
                      Expanded(
                        child: Align(alignment: Alignment.topLeft,
                          child: CircleAvatar(
                             backgroundColor: Colors.grey,
                            foregroundColor: Colors.white,
                            child: Text('j'),
                          ),
                        ),
                      ),
                      CircleAvatar(
                         backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                        child: Text('k'),
                      ),
                      CircleAvatar(
                         backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                        child: Text('L'),
                      ),
                    ],
                  ),*/
                    SizedBox(height: 20,),
                
                    Center(
                      child: SizedBox(height: 250,
                          child: Image(image: AssetImage("assets/images/shop_earbud_pic.png"))),
                    ),
                    SizedBox(height: 20,),
                
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21),
                        topRight: Radius.circular(21)),



                      ),
                      child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Wireless Headphone',
                                    style: TextStyle (fontSize: 25,fontWeight: FontWeight.w500),),
                                  Text('\$252.00',
                                    style: TextStyle (fontSize: 25,fontWeight: FontWeight.w500),),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(11),
                                            color: Color(0xffff650e)
                                        ),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.star,color: Colors.white,size: 15,),
                                            Text("4.8",style: TextStyle(fontSize: 15,color: Colors.white),),

                                          ],
                                        ),
                                      ),
                                      Text("(320 Review)",style: TextStyle(color: Colors.grey.shade500),)
                                    ],
                                  )
                                ],
                              ),
                              Text("Seller: Tariqul islam",
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text("Color",
                            style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w500),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.deepOrange
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.black,width: 2)
                                  ),
                                  child:
                                  Center(
                                    child: SizedBox(width: 35,
                                      height: 35,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                      ),
                                    ),
                                  )
                                /*Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black
                          ),
                        ),*/
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.brown
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xffff650e)
                                  ),
                                  child: Center(child: Text("Description"))
                              ),
                              Text("Specification"),
                              Text("Reviews")
                            ],
                          ),
                          Text('In 1958, John C. Koss, an audiophile and jazz musician from Milwaukee, '
                              'produced the first stereo headphones. Smaller earbud-type earpieces, which '
                              'plugged into the user\'s ear canal, were first developed for hearing aids.'),
                          SizedBox(height: 10,),
                        ],
                      ),
                    )
                
                  ],
                ),
              ),
            ]

          ),

        ),
      ),
    );
  }
}