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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(" Money Out",style: TextStyle(fontSize: 13.sp,color: Color(0xff989898),fontWeight: FontWeight.w400),),
                                SizedBox(height:5.h),
                                Text(" EGP 2,100",style: TextStyle(fontSize: 14.sp,color: Color(0xff292929),fontWeight: FontWeight.w600),)
                              ]),
                          Container(
                            width:115.w,
                            height: 45.h,
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
                            child: Center(
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
                                    child: Text(value,style: TextStyle(fontSize: 11.sp,color: Color(0xff525252),fontWeight: FontWeight.w400), ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],)
                  ),
                  margin: EdgeInsets.symmetric(vertical:5.h,horizontal: 8.w),
                  width:MediaQuery.of(context).size.width,
                  height:85.h,
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
                  padding:  EdgeInsets.only(left: 8.0,top: 18.h,bottom: 5.h),
                  child: Text("May 27",style: TextStyle(fontSize: 14.sp,color: Color(0xff292929),fontWeight: FontWeight.w700),),
                )
                ,Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Frame 1000005311.png",width: 40.w,height: 46.h),
                        SizedBox(width:5,),
                        Container
                          ( height:48.h,width:269.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:6.0),
                                child: Row(

                                  children: [
                                    Text("Shopping",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                     Spacer(),
                                    Text("EGP 300 of EGP 800",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount:800,spentAmount: 300,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
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
                        Image.asset("assets/images/Frame 35080.png",height:46.h,width: 40.w ),
                        SizedBox(width:5,),
                        Container
                          ( height:48.h,width:269.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:5),
                                child: Row(

                                  children: [
                                    Text("Housing",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
 Spacer(),
                                    Text("EGP 800 of EGP 1,000",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount: 1000,spentAmount: 800,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius

                      ),

                    ],
                  ),),
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("May 26",style: TextStyle(fontSize: 14.sp,color: Color(0xff292929),fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 5.h,),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Frame 1000005314.png",width: 40.w,height: 46.h),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:235,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:6),
                                child: Row(

                                  children: [
                                    Text("Foods & Drinks",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                    Spacer(),
                                    Text("EGP 500 of EGP 800",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount:800,spentAmount: 500,width: 300.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4), //color of shadow

                        spreadRadius:1, //spread radius
                        blurRadius:10, // blur radius

                      ),

                    ],
                  ),),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Frame 1000005315.png",height:46.h,width: 40.w ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:235,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:6),
                                child: Row(
                                  children: [
                                    Text("Entertainment",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                    Spacer(),
                                    Text("EGP 200 of EGP 400",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount:400,spentAmount: 200,width: 270.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
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
                        Image.asset("assets/images/Frame 1000005316.png",height:46.h,width: 40.w ),
                        SizedBox(width:5,),
                        Container
                          ( height:48.h,width:265.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Vehicle",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                    Spacer(),

                                    Text("EGP 150 of EGP 300",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount:300,spentAmount: 150,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
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
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: Text("May 25",style: TextStyle(fontSize: 14.sp,color: Color(0xff292929),fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 5.h,),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Frame 1000005313.png",width: 40.w,height: 46.h),
                        SizedBox(width:5,),
                        Container
                          ( height:48.h,width:269.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:6.0.h),
                                child: Row(

                                  children: [
                                    Text("Financial Expenses",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
Spacer(),
                                    Text("EGP 200 of EGP 300",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount:300,spentAmount: 200,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
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
                        Image.asset("assets/images/Frame 1000005316.png",height:46.h,width: 40.w ),
                        SizedBox(width:5,),
                        Container
                          ( height:48,width:235,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:6.0.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Vehicle",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                    SizedBox(width: 5.w,),
                                    Text("EGP 150 of EGP 300",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                  ],),
                              ),
                              SizedBox(height:10.h,),
                              LoadingProg(totalAmount:300,spentAmount: 150,width: 312.w),
                            ],),
                        )
                      ],),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  width:MediaQuery.of(context).size.width,
                  height:70.h,
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
