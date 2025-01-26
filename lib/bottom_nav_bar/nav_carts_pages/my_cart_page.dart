import 'package:e_commerce_app/decor/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(onTap: (){
                          Navigator.pop(context);
                        },
                          child: Container(
                            height:40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                        Expanded(
                            child: Center(
                                child: Text('My Cart',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),)))
                      ],
                    ),
                    mSpacer(mHeight: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.grey.shade300
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                mSpacer(),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.grey.shade200,
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/shop_kids_wrbg2.png'),fit: BoxFit.fill
                                      )
                                    ),
                                  ),
                                ),
                                Expanded(flex: 4,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Top Wear',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                          Icon(Icons.delete,color: Colors.red,)
                                        ],
                                      ),
                                      Text('Kids Wear',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('\$70.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(11),
                                              color: Colors.grey.shade100
                                            ),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("-",style: TextStyle(fontSize: 25),),
                                                Text("1",style: TextStyle(fontSize: 18),),
                                                Text("+",style: TextStyle(fontSize: 20),)

                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              mSpacer()],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.grey.shade300
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                mSpacer(),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.grey.shade200,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/shop_watch_rbg.png'),fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Expanded(flex: 4,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Mens Watch',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                          Icon(Icons.delete,color: Colors.red,)
                                        ],
                                      ),
                                      Text('Mens Fashion',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('\$90.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(11),
                                              color: Colors.grey.shade100
                                            ),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Text("-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                                                Text("1",style: TextStyle(fontSize: 18),),
                                                Text("+",style: TextStyle(fontSize: 20),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                mSpacer()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.grey.shade300
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                mSpacer(),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.grey.shade200,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/shop_earbud_pic.png'),fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Expanded(flex: 4,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Earbuds',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                          Icon(Icons.delete,color: Colors.red,)
                                        ],
                                      ),
                                      Text('Electronic',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('\$80.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(11),
                                              color: Colors.grey.shade100
                                            ),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Text("-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                                                Text("1",style: TextStyle(fontSize: 18),),
                                                Text("+",style: TextStyle(fontSize: 20),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                mSpacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(31),
                        topRight: Radius.circular(31)),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      mSpacer(mHeight: 5),
                      SizedBox(height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: BorderSide.none
                              ),
                              hintText: "Enter Discount Code",
                              suffixText: "Apply",
                              suffixStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffff650e))
                            // labelText: "Enter"

                          ),


                        ),
                      ),
                      mSpacer(),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey.shade500),),
                          Text("\$240.00",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Divider(),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Text("\$240.00",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: OutlinedButton(onPressed: (){},
                          child: Text("Checkout",
                            style: TextStyle(fontSize: 20,color: Colors.white),),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xffff650e),
                            side: BorderSide.none,

                          )),
                      )
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