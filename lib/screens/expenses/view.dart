import 'package:cashkit/core/desgin/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override

  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  String _selectedInterval = 'This Day'; // Default selected interval
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Expenses",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading: InkWell(
          onTap:  (){

          },
          child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(

                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Money Out",style: TextStyle(fontSize: 16.sp,color: Color(0xff989898),fontWeight: FontWeight.w400),),
                                SizedBox(height:6.h),
                                Text("EGP 2,100",style: TextStyle(fontSize: 24.sp,color: Color(0xff292929),fontWeight: FontWeight.w600),)
                              ]),
                          Container(
                            width:100.w,
                            height: 43.h,
                            decoration: BoxDecoration(

                              color:Color(0xffEFEFEF),
                              borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1), //color of shadow

                                  spreadRadius:1, //spread radius
                                  blurRadius:10, // blur radius

                                ),

                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: DropdownButton<String>(
                                value: _selectedInterval,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedInterval = newValue!;
                                  });
                                },
                                items: <String>['This Day', 'This Week', 'This Month' ]
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,style: TextStyle(fontSize: 12.sp,color: Color(0xff525252),fontWeight: FontWeight.w600), ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],)
                  ),
                  margin: EdgeInsets.symmetric(vertical:5.h,horizontal: 8.w),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),
                SizedBox(height: 5.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nov 27",style: TextStyle(fontSize: 16,color: Color(0xff292929),fontWeight: FontWeight.w700),),
                )
                ,Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/emojione-v1_shopping-bags.png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("shopping",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 300 of EGP 800",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount:800,spentAmount: 300,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),
                SizedBox(height: 5.h,),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/noto_house (2).png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Housing",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 800 of EGP 1,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount: 1000,spentAmount: 800,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),
                SizedBox(height: 5.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nov 26",style: TextStyle(fontSize: 16,color: Color(0xff292929),fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 5.h,),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/emojione_fork-and-knife.png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Foods & Drinks",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 500 of EGP 800",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount:800,spentAmount: 500,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/twemoji_man-biking.png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Entertainment",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 200 of EGP 400",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount:400,spentAmount: 200,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/22989_cabriolet_car_mazda_red_transport_icon 1.png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vehicle",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 150 of EGP 300",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount:300,spentAmount: 150,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),
                SizedBox(height: 5.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nov 25",style: TextStyle(fontSize: 16,color: Color(0xff292929),fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 5.h,),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/Money.png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Financial Expenses",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 200 of EGP 300",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount:300,spentAmount: 200,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),

                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(

                            color:Color(0xffEFEFEF),
                            borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                          ),
                          height:48,width:35,
                          child:Image.asset("assets/images/22989_cabriolet_car_mazda_red_transport_icon 1.png",) ,
                        ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:275,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vehicle",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Color(0xff292929))),

                                  Text("EGP 150 of EGP 300",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                ],),
                              SizedBox(height:15,),
                              LoadingProg(totalAmount:300,spentAmount: 150,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width.w,
                  height:80.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius
                        //changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),),


              ]),
        ),
      ),
    );
  }
}
