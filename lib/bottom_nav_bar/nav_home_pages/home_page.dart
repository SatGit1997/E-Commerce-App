import 'package:e_commerce_app/bottom_nav_bar/nav_home_pages/item_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  List<Map<String,dynamic>> mCat= [
    {
    "img": "assets/images/shop_earbud_pic.png",
    "catName": "Beauty"
  },
    {
      "img": "assets/images/shop_earbud_pic.png",
      "catName": "Electronic"
    },
    {
      "img": "assets/images/shop_shose_pic.png",
      "catName": "Fashion"
    },
    {
      "img": "assets/images/shop_earbud_pic.png",
      "catName": "Beauty"
    },
    {
      "img": "assets/images/shop_earbud_pic.png",
      "catName": "Electronic"
    },
    {
      "img": "assets/images/shop_shose_pic.png",
      "catName": "Fashion"
    },{
      "img": "assets/images/shop_earbud_pic.png",
      "catName": "Beauty"
    },
    {
      "img": "assets/images/shop_earbud_pic.png",
      "catName": "Electronic"
    },
    {
      "img": "assets/images/shop_shose_pic.png",
      "catName": "Fashion"
    }
  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          title: Text('E Commerce'),
          centerTitle: true,
        ),*/
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

              /*Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.grey.shade200
                ),
              )*/
              TextField(
               decoration: InputDecoration(fillColor: Colors.green,
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(31),
                   borderSide: BorderSide()
                 ),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(31),
                     borderSide: BorderSide()
                 ),
                 prefixIcon: Icon(Icons.search_rounded),
                 hintText: 'Search...',
                 suffixIcon: Icon(Icons.compare_arrows_rounded)
               ),

              ),
              SizedBox(height: 20,),

              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(image: AssetImage("assets/images/shop_shose_pic.png"))

                ),

              ),
              SizedBox(height: 20,),

              Expanded(
                child: ListView(scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mCat.map((element){
                        return Container(
                          height: 80,
                          width: 80,

                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(element['img'],),
                              ),
                              Text(element["catName"]),
                              SizedBox(width: 10,),

                            ],
                          ),
                        );

                      }).toList(),
                    ),

                  ],
                ),
              ),

              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special for you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Text("See all"),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ItemViewPage()));
                      },
                        child: Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),

                        ),child: Image.asset("assets/images/shop_earbud_pic.png"),

                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                        ), child: Image.asset("assets/images/shop_ht.png"),),

                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),

                        ),child: Image.asset("assets/images/shop_watch.png"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),

                        ),child: Image.asset("assets/images/kids_shirt.png"),
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