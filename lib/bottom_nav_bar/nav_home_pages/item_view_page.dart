import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemViewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.arrow_back_ios_rounded)),
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.share_rounded)),
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.shade200
                      ),
                      child: Icon(Icons.heart_broken_rounded)),

                ],
              ),
              SizedBox(height: 20,),
              
              Center(
                child: SizedBox(height: 250,
                    child: Image(image: AssetImage("assets/images/shop_earbud_pic.png"))),
              ),
              SizedBox(height: 20,),

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
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black
                    ),
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
              Text("Take a look at new the design concept for the e-commerce app. "
                  "Thanks for your likes and comments! Take a look at new the design concept for the e-commerce app. "
                  "Thanks for your likes and comments! Take a look at new the design concept for the e-commerce app. "
                  "Thanks for your likes and comments!"),
              SizedBox(height: 10,),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31),
                  color: Colors.black
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
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
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffff650e)
                        ),
                        child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white),))
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}