import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:cashkit/screens/profile/rosca_template/add_member/view.dart';
import 'package:cashkit/screens/profile/rosca_template/create_rosca/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view.dart';
import '../rosca_month/month_one/view.dart';

class RoscaHomeScreen extends StatefulWidget {
  const RoscaHomeScreen({Key? key}) : super(key: key);

  @override
  State<RoscaHomeScreen> createState() => _RoscaHomeScreenState();
}

class _RoscaHomeScreenState extends State<RoscaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEFEFEF),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child:   InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>CreatRosca()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 8,right: 4),
              child: Container(
                height: 65.h,
                width:65.w,
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
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xffEFEFEF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavScreen(),
                  ),
                      (route) => false);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            "ROSCA ",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
       child: Column(   children: [
         Container(
           decoration: BoxDecoration(
               color: Colors.white, borderRadius: BorderRadius.circular(10)),
           padding: EdgeInsets.all(16),
           margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
           height: 250.h,
           width: double.infinity.w,

           child: Column(
             children: [
               Row(
                 children: [
                   Text(
                     "ROSCA 3",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w600),
                   ),
                   Spacer(),
                   IconButton(
                       onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => RoscaMonthOneScreen(),
                             ));
                       },
                       icon: Icon(Icons.arrow_forward_ios_rounded,size: 22,)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("3 Member"  , style: TextStyle(
                       fontSize: 14.sp)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("3 Months",   style: TextStyle(
                       fontSize: 14.sp)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("EGP 1,000-Monthly ",
                       style: TextStyle(
                           fontSize: 14.sp)),
                   Spacer(),
                   ElevatedButton(

                       style: ElevatedButton.styleFrom(
                           fixedSize: Size(110.w, 35.h),
                           elevation: 0,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(8)),
                           side: BorderSide(
                               width: 1.5,
                               color: Theme.of(context).primaryColor),
                           backgroundColor: Colors.white),
                       onPressed: () {},
                       child: Text(
                         "In process",
                         style: TextStyle(
                             color: Theme.of(context).primaryColor,fontSize: 12.sp),
                       ))
                 ],
               ),
               Divider(
                 thickness: 0.5,
                 color: Colors.grey,
               ),
               Row(
                 children: [
                   Spacer(),
                   Column(
                     children: [
                       Text("Start",   style: TextStyle(
                           fontSize: 14.sp)),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("7 june 2024",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Container(
                     width: 1,
                     height: 50.h,
                     color: Colors.grey,
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Column(
                     children: [
                       Text("End" ,style: TextStyle(
                           fontSize: 14.sp) ),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("7 Sep 2024",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Container(
                     width: 1,
                     height: 50.h,
                     color: Colors.grey,
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Column(
                     children: [
                       Text("Total",style: TextStyle(
                           fontSize: 14.sp)),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("EGP 3,000 ",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                 ],
               ),
             ],
           ),
           // color: ,
         ),
         Container(
           decoration: BoxDecoration(
               color: Colors.white, borderRadius: BorderRadius.circular(10)),
           padding: EdgeInsets.all(16),
           margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
           height: 250.h,
           width: double.infinity.w,

           child: Column(
             children: [
               Row(
                 children: [
                   Text(
                     "ROSCA 2",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w600),
                   ),
                   Spacer(),
                   IconButton(
                       onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => RoscaMonthOneScreen(),
                             ));
                       },
                       icon: Icon(Icons.arrow_forward_ios_rounded,size: 22,)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("5 Member"  , style: TextStyle(
                       fontSize: 14.sp)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("5 Months",   style: TextStyle(
                       fontSize: 14.sp)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("EGP 2,000-Monthly ",
                       style: TextStyle(
                           fontSize: 14.sp)),
                   Spacer(),
                   ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           fixedSize: Size(110.w, 35.h),
                           elevation: 0,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(8)),
                           side: BorderSide(
                               width: 1.5,
                               color: Theme.of(context).primaryColor),
                           backgroundColor: Theme.of(context).primaryColor),
                       onPressed: () {},
                       child: Text(
                         "Completed",
                         style: TextStyle(color: Colors.white,fontSize: 12.sp),
                       ))
                 ],
               ),
               Divider(
                 thickness: 0.5,
                 color: Colors.grey,
               ),
               Row(
                 children: [
                   Spacer(),
                   Column(
                     children: [
                       Text("Start",   style: TextStyle(
                           fontSize: 14.sp)),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("1 Jan 2024",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Container(
                     width: 1,
                     height: 50.h,
                     color: Colors.grey,
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Column(
                     children: [
                       Text("End" ,style: TextStyle(
                           fontSize: 14.sp) ),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("7 May 2024",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Container(
                     width: 1,
                     height: 50.h,
                     color: Colors.grey,
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Column(
                     children: [
                       Text("Total",style: TextStyle(
                           fontSize: 14.sp)),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("EGP 10,000 ",
                           style: TextStyle(
                               fontSize: 11.sp, fontWeight: FontWeight.w800)),
                     ],
                   ),
                   Spacer(),
                 ],
               ),
             ],
           ),
           // color: ,
         ),
         Container(
           decoration: BoxDecoration(
               color: Colors.white, borderRadius: BorderRadius.circular(10)),
           padding: EdgeInsets.all(16),
           margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
           height: 250.h,
           width: double.infinity.w,

           child: Column(
             children: [
               Row(
                 children: [
                   Text(
                     "ROSCA 1",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w600),
                   ),
                   Spacer(),
                   IconButton(
                       onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => RoscaMonthOneScreen(),
                             ));
                       },
                       icon: Icon(Icons.arrow_forward_ios_rounded,size: 22,)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("10 Member"  , style: TextStyle(
                       fontSize: 14.sp)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("5 Months",   style: TextStyle(
                       fontSize: 14.sp)),
                 ],
               ),
               Row(
                 children: [
                   Text(
                     "- ",
                     style: TextStyle(
                         fontWeight: FontWeight.w600, fontSize: 20.sp),
                   ),
                   Text("EGP 2,000-Monthly ",
                       style: TextStyle(
                           fontSize: 14.sp)),
                   Spacer(),
                   ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           fixedSize: Size(110.w, 35.h),
                           elevation: 0,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(8)),
                           side: BorderSide(
                               width: 1.5,
                               color: Theme.of(context).primaryColor),
                           backgroundColor: Theme.of(context).primaryColor),
                       onPressed: () {},
                       child: Text(
                         "Completed",
                         style: TextStyle(color: Colors.white,fontSize: 12.sp),
                       ))
                 ],
               ),
               Divider(
                 thickness: 0.5,
                 color: Colors.grey,
               ),
               Row(
                 children: [
                   Spacer(),
                   Column(
                     children: [
                       Text("Start",   style: TextStyle(
                           fontSize: 14.sp)),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("8 Oct 2024",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Container(
                     width: 1,
                     height: 50.h,
                     color: Colors.grey,
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Column(
                     children: [
                       Text("End" ,style: TextStyle(
                           fontSize: 14.sp) ),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("7 Feb 2024",
                           style: TextStyle(
                               fontSize: 13.sp, fontWeight: FontWeight.w600)),
                     ],
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Container(
                     width: 1,
                     height: 50.h,
                     color: Colors.grey,
                   ),
                   Spacer(),
                   SizedBox(
                     width: 5,
                   ),
                   Spacer(),
                   Column(
                     children: [
                       Text("Total",style: TextStyle(
                           fontSize: 14.sp)),
                       SizedBox(
                         height: 5.h,
                       ),
                       Text("EGP 10,000 ",
                           style: TextStyle(
                               fontSize: 11.sp, fontWeight: FontWeight.w800)),
                     ],
                   ),
                   Spacer(),
                 ],
               ),
             ],
           ),
           // color: ,
         ),
       ],),
        ));
  }
}