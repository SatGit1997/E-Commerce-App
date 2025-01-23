import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
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
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey.shade300
                                  ), child: Image.asset("assets/images/kids_shirt.png",fit: BoxFit.fill,),
                                ),
                              ),
                              Expanded(flex: 4,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Women Sweter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                        Icon(Icons.delete,color: Colors.red,)
                                      ],
                                    ),
                                    Text('Women Fashion',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
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
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.grey.shade300
                                  ), child: Image.asset("assets/images/shop_watch.png",fit:BoxFit.fill,),
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
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.grey.shade300
                                  ), child: Image.asset("assets/images/shop_earbud_pic.png",fit:BoxFit.fill,),
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
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide.none
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
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
                    height: 50,
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
            )
          ],
        ),
      ),

    );
  }
}