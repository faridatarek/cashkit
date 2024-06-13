

import 'package:cashkit/screens/home/view.dart';

import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Charts_screen extends StatelessWidget {

 Charts_screen({Key? key}) : super(key: key);

 final List<allCateg_data> allCateg_data_list = [
   allCateg_data(categName: "Bills & Utilities",categColor: Color(0xffFFA84A),categSpend:3000,categImg: Image.asset("assets/images/image 80.png")),
   allCateg_data(categName: "Food & Drinks",categColor: Color(0xff04BFDA),categSpend: 1000,categImg: Image.asset("assets/images/emojione_fork-and-knife.png")),
   allCateg_data(categName: "Housing",categColor: Color(0xffFB67CA),categSpend: 700,categImg: Image.asset("assets/images/noto_house (2).png")),
   allCateg_data(categName: "Shopping",categColor: Color(0xff9B88ED),categSpend: 300,categImg: Image.asset("assets/images/emojione-v1_shopping-bags.png")),

 ];
  final GlobalKey<AnimatedCircularChartState> _chartKey = GlobalKey();
 final Size _chartSize = Size(200.0, 10.0);
  double billsPercentage =50;
  double foodPercentage =30;
  double housingPercentage =15;
  double shoppingPercentage =5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("statistics",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading: InkWell(
          onTap:  (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>HomeScreen ()));
          },
          child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),))),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 396.w,height: 48.h,
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
                ),
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: [
                    Icon(Icons.arrow_back_ios,color: Color(0xff292929),),
                  Spacer(),

                  Center(child: Text("February 2024",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)))
            ,Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Color(0xff292929),),
                ]),
              ) ,
              ),
            ),
            SizedBox(height: 60.h,),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children:[

                    Padding(
                      padding:  EdgeInsets.only(left:50.0.w,bottom: 60.h,top: 15.h),
                      child: Text("Total Expenses",style: TextStyle(fontSize: 14.sp,color: Color(0xff848A9C),fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 40),
                      child: AnimatedCircularChart(


                        holeRadius:60.r,
                         holeLabel: "EGP 6,000",
                        labelStyle:TextStyle(fontSize: 13.sp,color: Color(0xff243465),fontWeight: FontWeight.w600) ,
                        edgeStyle: SegmentEdgeStyle.flat,

                        key: _chartKey,
                        size: _chartSize,
                        initialChartData: <CircularStackEntry>[
                          CircularStackEntry(

                            <CircularSegmentEntry>[

                              CircularSegmentEntry(

                                billsPercentage,
                                Color(0xffFFA84A),
                                rankKey: 'bills',
                              ),

                              CircularSegmentEntry(

                                housingPercentage ,
                                Color(0xffFB67CA),
                                rankKey: 'housing',
                              ),
                              CircularSegmentEntry(

                                shoppingPercentage,
                                Color(0xff9B88ED),
                                rankKey: 'shopping',
                              ),
                              CircularSegmentEntry(

                                foodPercentage,
                                Color(0xff04BFDA),
                                rankKey: 'food',
                              ),
                              CircularSegmentEntry(

                                100 - (shoppingPercentage+foodPercentage+ housingPercentage+billsPercentage),
                                Color(0xffEFEFEF),
                                rankKey: 'remaining',
                              ),

                            ],


                          ),
                        ],
                        chartType: CircularChartType.Radial,
                        percentageValues: true,




                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:190.0),
                      child: Container(
                        height:90.h,
                        width:105.w,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 6.h);
                          },

                          itemCount: allCateg_data_list.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                CircleAvatar(backgroundColor: allCateg_data_list[index].categColor,radius: 5.r,),
                                SizedBox(width: 4.w,),
                                Text("${allCateg_data_list[index].categName}",style: TextStyle(fontSize: 10.sp,color: Color(0xff292929),fontWeight: FontWeight.w500)),
                              ],) ;
                          },
                        ),
                      ),
                    ),

                  ]
                ),
                SizedBox(width: 20.w,),

              ],
            ),
            SizedBox(height: 40.h,),
            Text("Top categories of expenses,February",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)),
             SizedBox(height: 10.h,),
                SingleChildScrollView(
                  child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                      height:800.h,
                      width: 400.w,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 15.h);
                        },
                        itemCount: allCateg_data_list.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 396.w,
                            height: 66.h,
                            decoration: BoxDecoration(

                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2), //color of shadow

                                  spreadRadius:1, //spread radius
                                  blurRadius:10, // blur radius
                                  //changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                CircleAvatar(backgroundColor:  Color(0xffF6F6F6),child: allCateg_data_list[index].categImg,radius: 18.r,),
                                SizedBox(width: 6.w,),
                                Text("${allCateg_data_list[index].categName}",style: TextStyle(fontSize: 14.sp,color: Color(0xff292929),fontWeight: FontWeight.w500)),
                               Spacer(),
                                Text(" -EGP ${allCateg_data_list[index].categSpend}",style: TextStyle(fontSize: 14.sp,color: Color(0xffF14242),fontWeight: FontWeight.w500)),
                              ],),

                            ),
                          ) ;
                        },
                      ),
                    ),
            ),
                ),
          ]),
        ),
      ),
    );
  }
}
class allCateg_data{
  final String categName;
 final int categSpend;
  final Image categImg ;
  final Color categColor;
  allCateg_data({required this.categName,required this.categColor,required this.categSpend,required this.categImg});
}