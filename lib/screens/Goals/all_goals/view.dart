
import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/Goals/Your_goal/view.dart';
import 'package:cashkit/screens/Goals/create_goals/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class All_Goals extends StatefulWidget {
  All_Goals({Key? key}) : super(key: key);

  @override
  State<All_Goals> createState() => _All_GoalsState();
}

class _All_GoalsState extends State<All_Goals> {
  final List<Data> containerData = [
    Data(goalName: "New Car",totalAmount: 150000,firstdate: "12/2/2025",lastdate: "12/9/2026"
        ,goalImg:Image.asset("assets/images/22989_cabriolet_car_mazda_red_transport_icon 1.png",)
        ,spendAmount: 90000,spendTime: "2 years and 1 month left",spendFromTotal: "EGP 90,000 / EGP 150,000"),
    Data(goalName: "Travel To Japan",totalAmount: 30000,firstdate: "12/2/2025",lastdate: "12/9/2026"
        ,goalImg:Image.asset("assets/images/noto_house (2).png",)
        ,spendAmount: 8000,spendTime: "1 year and 3 months left",spendFromTotal: "EGP 8000 / EGP 30,000"),
    Data(goalName: "Buy New House",totalAmount: 850000,firstdate: "12/2/2025",lastdate: "12/9/2026"
        ,goalImg:Image.asset("assets/images/Money.png",)
        ,spendAmount: 18000,spendTime: "5 years and 2 months left",spendFromTotal: "EGP 18,000 / EGP 850,000")

  ];

  void deleteData(int index) {
    setState(() {
      containerData.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Goals",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading: InkWell(
          onTap:  (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>NavScreen ()));
          },
          child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),))),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 8,top:22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                         Text("  You have 3 ongoing saving goals",style: TextStyle(fontSize: 17,color: Color(0xff292929),fontWeight: FontWeight.w600)),
                         SizedBox(height: 5.h,),
                         Text("  Time to start a new one",style: TextStyle(fontSize: 16,color: Color(0xff7C7C7C),fontWeight: FontWeight.w400)),

                       ]),

                     ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>Creat_goals ()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8,right: 4),
                          child: Container(
                            height: 56,
                            width:56,
                            decoration: BoxDecoration(shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff047857),


                                    Color(0xffAFFE9C),
                                  ],
                                )),
                            child: Icon(Icons.add,color:Color(0xffF6F6F6),size: 24, ),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical:7,horizontal: 7),
                width:396.w,
                height:100.h,
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), //color of shadow

                      spreadRadius:2, //spread radius
                      blurRadius:18, // blur radius
                      //changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Saving Goals",style: TextStyle(fontSize: 17,color: Color(0xff292929),fontWeight: FontWeight.w600),),
              )
              ,Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: containerData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Your_goal (data: containerData[index]
                              ,onDelete:  () {
                              deleteData(index);
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
                                  borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

                                ),
                                height:60,width:40,
                                child:containerData[index].goalImg,
                              ),
                              SizedBox(width:9,),
                              Container
                                (

                                height:70,width:MediaQuery.of(context).size.width.w*0.65,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" ${containerData[index].goalName}",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,color: Color(0xff292929))),
                                    SizedBox(height:13,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(" ${containerData[index].spendTime}",style: TextStyle(fontSize:12,fontWeight: FontWeight.w400,color: Color(0xff7C7C7C))),

                                        Text(" ${containerData[index].spendFromTotal}",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Color(0xff292929))),
                                      ],),
                                    SizedBox(height:7,),
                                    LoadingProg(totalAmount: containerData[index].totalAmount,spentAmount: containerData[index].spendAmount),
                                  ],),
                              )
                            ],),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                        width:MediaQuery.of(context).size.width.w,
                        height:90.h,
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class Data {

  final String goalName;
  final String spendFromTotal;
  final Image goalImg ;
  final String firstdate;
  final String lastdate;
  final String spendTime;
  final double totalAmount;
  final double spendAmount;

  Data({required this.spendFromTotal,required this.goalName,required this.spendTime, required this.firstdate, required this.totalAmount,required this.lastdate,required this.spendAmount,required this.goalImg});
}
