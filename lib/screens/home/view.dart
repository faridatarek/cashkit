import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/Goals/Your_goal/view.dart';
import 'package:cashkit/screens/Goals/all_goals/view.dart';
import 'package:cashkit/screens/articles/view.dart';
import 'package:cashkit/screens/expenses/view.dart';
import 'package:cashkit/screens/profile/view.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../notifications/view.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final GlobalKey<AnimatedCircularChartState> _chartKey = GlobalKey();
    final Size _chartSize = Size(130.0, 130.0);

    final List<Data> containerData = [
      Data(goalName: "New Car",totalAmount: 150000,firstdate: "12/2/2025",lastdate: "12/9/2026"
          ,goalImg:Image.asset("assets/images/Frame 1000005312.png",)
          ,spendAmount: 90000,spendTime: "2 years and 1 month left",spendFromTotal: "EGP 90,000 / EGP 150,000"),
      Data(goalName: "Travel To Japan",totalAmount: 30000,firstdate: "12/2/2025",lastdate: "12/9/2026"
          ,goalImg:Image.asset("assets/images/Frame 1000005312.png",)
          ,spendAmount: 8000,spendTime: "1 year and 3 months left",spendFromTotal: "EGP 8000 / EGP 30,000"),
      Data(goalName: "Buy New House",totalAmount: 850000,firstdate: "12/2/2025",lastdate: "12/9/2026"
          ,goalImg:Image.asset("assets/images/Frame 1000005312.png",)
          ,spendAmount: 18000,spendTime: "5 years and 2 months left",spendFromTotal: "EGP 18,000 / EGP 850,000")

    ];
    List images = [
      "assets/images/articles_image.png",
      "assets/images/articles_image2.png",
      "assets/images/articles_image3.png",
      "assets/images/articles_image4.png",
      "assets/images/articles_image5.png",
    ];
    List upTitle = [
      "Learn how to ",
      "Reduce your",
      "7 tips for spending",
      "The 50/30/20 ",
      "best investments ",
    ];
    List downTitle = [
      "Budget",
      "Expenses",
      "money",
      "Budget Rule",
      "in 2023",
    ];

    double completedPercentage =55;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:40,left: 8.0,right: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0,bottom:5),
                  child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:7.0),
                          child: InkWell(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                            },
                              child: CircleAvatar(backgroundImage: AssetImage("assets/images/avtar1.png"),radius:27.r)),
                        ),
                        SizedBox(width: 10.w,),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text("Welcome,",style: TextStyle(fontSize: 15.sp,color: Color(0xff292929),fontWeight: FontWeight.w400)),
                              SizedBox(height: 1,),
                              Text("Farida",style: TextStyle(fontSize: 13.sp,color: Color(0xff292929),fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Spacer(),
                        InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen()));
                        },
                            child: Padding(
                              padding:  EdgeInsets.only(top: 2.0.h,bottom: 2.h,right: 7.w),
                              child:  CircleAvatar(backgroundColor: Color(0xffEFEFEF),backgroundImage: AssetImage("assets/images/Frame 1024.png",),radius:25.r),
                            )),

                      ]),
                ),
                margin: const EdgeInsets.symmetric(vertical:12,horizontal:1),
                width: 395.w,
                height:60.h,
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)), //border corner radius
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), //color of shadow

                      spreadRadius:2, //spread radius
                      blurRadius:18, // blur radius
                    ),

                  ],
                ),
              ),
              Image.asset("assets/images/offer.png",height:110.h ,width: 396.w,),
              Padding(
                padding:  EdgeInsets.only(top: 6.0),
                child: Text("Statistics",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  Column(children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(

                                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                                    width: 24.w,
                                    height:23.h,
                                    decoration: BoxDecoration(

                                      color:Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                                    ),
                                    child:Transform.rotate(
                                      angle:150, // 180 degrees in radians
                                      child: Icon(Icons.arrow_downward, color: Colors.white,size: 20),
                                    )
                                ),
                                Container(

                                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                                    width:56.w,
                                    height:25.h,
                                    decoration: BoxDecoration(

                                      color:Color(0xffEFEFEF),
                                      borderRadius: BorderRadius.all(Radius.circular(5)), //border corner radius

                                    ),
                                    child:Center(
                                      child: Row(children: [
                                        Text(" 6%",style: TextStyle(fontSize: 12.sp,color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold)),
                                        SizedBox(width: 3.w,),
                                        Icon(Icons.trending_up, color:Theme.of(context).primaryColor,size: 20),
                                      ],),
                                    )
                                ),


                              ]),
                          Padding(
                            padding:  EdgeInsets.only(top: 5.0),
                            child: Text("  Income",style: TextStyle(fontSize: 14.sp,color: Color(0xff989898),fontWeight: FontWeight.w400)),
                          ),
                          SizedBox(height: 5.h,),
                          Text("  EGP 5,000",style: TextStyle(fontSize: 13.sp,color: Color(0xff292929),fontWeight: FontWeight.w500)),

                        ],
                      ),
                      margin: EdgeInsets.symmetric(vertical:5.h,horizontal: 2.w),
                      width:155.w,
                      height:102.h,
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), //color of shadow

                            spreadRadius:2, //spread radius
                            blurRadius:18, // blur radius

                          ),

                        ],
                      ),),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(

                                    margin: EdgeInsets.symmetric(vertical:7,horizontal: 7),
                                    width: 24.w,
                                    height:23.h,
                                    decoration: BoxDecoration(

                                      color:Color(0xffFACC15),
                                      borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                                    ),
                                    child:Transform.rotate(
                                      angle:150, // 180 degrees in radians
                                      child: Icon(Icons.arrow_downward, color: Colors.white,size: 20),
                                    )
                                ),
                                Container(

                                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                                    width:56.w,
                                    height:25.h,
                                    decoration: BoxDecoration(

                                      color:Color(0xffEFEFEF),
                                      borderRadius: BorderRadius.all(Radius.circular(5)), //border corner radius

                                    ),
                                    child:Center(
                                      child: Row(children: [
                                        Text(" 8%",style: TextStyle(fontSize: 12.sp,color: Color(0xffFACC15),fontWeight: FontWeight.w500)),
                                        SizedBox(width:3.w,),
                                        Icon(Icons.trending_up, color:Color(0xffFACC15),size: 20),
                                      ],),
                                    )
                                ),


                              ]),
                          Padding(
                            padding:  EdgeInsets.only(top: 5.0.w),
                            child: Text("  Saving",style: TextStyle(fontSize: 14.sp,color: Color(0xff989898),fontWeight: FontWeight.w400)),
                          ),
                          SizedBox(height: 5.h,),
                          Text("  EGP 1,000",style: TextStyle(fontSize: 13.sp,color: Color(0xff292929),fontWeight: FontWeight.w500)),

                        ],
                      ),
                      margin: EdgeInsets.symmetric(vertical:3.h,horizontal: 2.w),
                      width: 155.w,
                      height:102.h,
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), //color of shadow

                            spreadRadius:2, //spread radius
                            blurRadius:18, // blur radius

                          ),

                        ],
                      ),),
                  ],),
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(

                              children: [

                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    AnimatedCircularChart(


                                      holeRadius:40.r,

                                      edgeStyle: SegmentEdgeStyle.round,

                                      key: _chartKey,
                                      size: _chartSize,
                                      initialChartData: <CircularStackEntry>[
                                        CircularStackEntry(

                                          <CircularSegmentEntry>[

                                            CircularSegmentEntry(

                                              completedPercentage,
                                              completedPercentage > 50 ? Colors.red : Color(0xff17875E),
                                              rankKey: 'completed',
                                            ),
                                            CircularSegmentEntry(

                                              100 - (completedPercentage),
                                              Color(0xffEFEFEF),
                                              rankKey: 'remaining',
                                            ),

                                          ],


                                        ),
                                      ],
                                      chartType: CircularChartType.Radial,
                                      percentageValues: true,




                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left:90.w),
                                      child: Container(
                                        width:65.w,
                                        height:20.h,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color:Theme.of(context).primaryColor,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'EGP 5,000',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:7.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                           Padding(
                             padding:  EdgeInsets.only(right:3.0.w,left:4.0.w ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("EGP 2,200 spent of EGP 4,000",style: TextStyle(fontSize:9.sp,color: Color(0xff292929).withOpacity(0.4),fontWeight: FontWeight.w400)),
                                 SizedBox(height: 6.h,),
                                 Text("Monthly Budget",style: TextStyle(fontSize: 11.sp,color: Color(0xff989898).withOpacity(0.9),fontWeight: FontWeight.w400)
                                 ),
                                 SizedBox(height:6.h,),
                                 Text("EGP 4,000",style: TextStyle(fontSize: 13.sp,color: Color(0xff292929),fontWeight: FontWeight.w500))
                               ],
                             ),
                           )




                          ]),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5,horizontal:6.w),
                    width:171.w,
                    height:214.h,
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
                    ),)
                ],),

              Container(

                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Top expenses",style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) =>Expenses ()));
                                  },
                                  child: Text("View all",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w400,color: Color(0xff525252)))),
                            ],),
                        ),
                        SizedBox(height: 5,),
                        Container(

                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Frame 35080.png",height:46.h,width: 45.w ),
                                SizedBox(width:7.w,),
                                Container
                                  ( height:70.h,width:239.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top: 8.0.h),
                                        child: Row(

                                          children: [
                                            Text("Housing",style: TextStyle(fontSize:13.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                           Spacer(),
                                            Text("EGP 800 of EGP 1,000",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                          ],),
                                      ),
                                      SizedBox(height:14.h,),
                                      LoadingProg(totalAmount:1000,spentAmount: 800,width: 240.w),
                                    ],),
                                )
                              ],),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                          width:360.w,
                          height:65.h,
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4), //color of shadow

                                spreadRadius:1,
                                blurRadius:10,
                              ),

                            ],
                          ),),
                        SizedBox(height: 5,),

                        Container(

                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/Frame 1000005311.png",width: 45.w,height: 46.h),
                                SizedBox(width:7.w,),
                                Container
                                  ( height:70.h,width:239.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top: 8.0.h),
                                        child: Row(

                                          children: [
                                            Text("Shopping",style: TextStyle(fontSize:13.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                                            Spacer(),
                                            Text("EGP 300 of EGP 800",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400,color: Color(0xff525252))),
                                          ],),
                                      ),
                                      SizedBox(height:14.h,),
                                      LoadingProg(totalAmount:800,spentAmount: 300,width: 240.w),
                                    ],),
                                )
                              ],),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                          width:360.w,
                          height:65.h,
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4), //color of shadow

                                spreadRadius:1,
                                blurRadius:10,
                              ),

                            ],
                          ),),

                      ]),
                ),
                margin: EdgeInsets.symmetric(vertical: 5,horizontal:5.w),
                width:359.w,
                height:215.h,
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow

                      spreadRadius:1,
                      blurRadius:10,
                    ),

                  ],
                ),),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Goals",style: TextStyle(fontSize:16.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                  InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>All_Goals ()));
                      },
                      child: Text("View all  ",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w400,color: Color(0xff525252)))),
                ],),
              SizedBox(height: 5.h,),
               Container(
            height: 100.w,
            width: MediaQuery.of(context).size.width.w ,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,

                shrinkWrap: true,
                itemBuilder: (context, index) =>GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Your_goal (data: containerData[index]
                          ,onDelete:  () {

                          },),
                      ),
                    );
                  },
                  child:Container(

                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(

                              color:Color(0xffEFEFEF),
                              borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius

                            ),
                            height:43.h,width:48.w,
                            child:containerData[index].goalImg,
                          ),
                          SizedBox(width:9,),
                          Padding(
                            padding:  EdgeInsets.only(top:6.0),
                            child: Container

                              (

                              height:70,width:MediaQuery.of(context).size.width.w*0.45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(" ${containerData[index].goalName}",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w500,color: Color(0xff292929))),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios,color: Color(0xff989898),size: 14,)
                                    ],
                                  ),
                                  SizedBox(height:6.h,),
                                  Text(" ${containerData[index].spendFromTotal}",style: TextStyle(fontSize: 8.sp,fontWeight: FontWeight.w800,color: Color(0xff989899))),
                                  SizedBox(height:11.h,),

                                  Container(

                                    width: 140.w,
                                    //275.w
                                    height: 6.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.sp),
                                      color: Color(0xffEFEFEF),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional.centerStart,
                                      child: Container(
                                        width:150* (containerData[index].spendAmount/containerData[index].totalAmount).w,
                                        height: 6.h,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xffAFFE9C),
                                              Color(0xff047857).withOpacity(.6),
                                              Color(0xff005B3B).withOpacity(.8),

                                            ]),
                                            borderRadius: BorderRadius.circular(24.sp),
                                            color: Theme.of(context).primaryColor),
                                      ),
                                    ),
                                  )
                                ],),

                            ),
                          )
                        ],),
                    ),
                    margin: EdgeInsets.symmetric(vertical:8,horizontal: 8),
                    width:220.w,
                    height:50.h,
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4), //color of shadow

                          spreadRadius:1,
                          blurRadius:10,
                        ),

                      ],
                    ),),
                ),
                itemCount: containerData.length),
          ),
              SizedBox(height: 5.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Articles",style: TextStyle(fontSize:16.sp,fontWeight: FontWeight.w600,color: Color(0xff292929))),
                  InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>Expenses ()));
                      },
                      child: Text("View all  ",style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w400,color: Color(0xff525252)))),
                ],),
              SizedBox(height: 5.h,),
              Container(
                height: 150.h,
                width: MediaQuery.of(context).size.width ,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlesScreen(),));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal:10.w),
                            height: 140.h,
                            width: 128.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  images[index],
                                  width: 86.w,
                                  height: 86.h,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 54.h,
                                  width: 128.w,
                                  decoration: BoxDecoration(
                                      borderRadius:BorderRadius.only(topRight:Radius.circular(16.r),topLeft:Radius.circular(16.r),bottomLeft:Radius.circular(8.r),bottomRight: Radius.circular(8.r) ),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        upTitle[index],
                                        style: TextStyle(
                                            fontSize: 8.sp, fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        downTitle[index],
                                        style: TextStyle(
                                            fontSize: 8.sp, fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height:1.h,),
                                      Text("Read",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.underline)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    itemCount: images.length),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
