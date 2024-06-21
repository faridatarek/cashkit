import 'package:cashkit/screens/profile/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../nav_bar/view.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/n1.png",
      "assets/images/n2.png",
      // "assets/images/n3.png",
    ];
    List title = [
      "Balance notification",
      "Upcoming bill",
      // "Budget overspending",
    ];
    List subTitle = [
      "             Congratulations! You’re back in  "
          "\n             positive balance (EGP 3000). You can        "
          "  \n             breathe a bit easier for a while.",
      "Internet bill will be due in 3 days.",
      // "Your monthly expense almost break the budget.",
    ];
    List date = ["5:28 pm", "3:28 pm", "1:30 pm"];
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50.0.h, right: 10),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(.8),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => DeleteScreen(),
                ),
                    (route) => true);
          },
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
            child: Icon(Icons.delete,color:Color(0xffF6F6F6),size: 28, ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => NavScreen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xffEFEFEF),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 16.0,bottom: 2.h),
              child: Text(
                "Today",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            Container(

              height: 205.h,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.symmetric(
                      vertical:10.h, horizontal: 16.0),
                  child: Container(

                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4.r)), //border corner radius
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), //color of shadow

                          spreadRadius:1,
                          blurRadius:10,
                        ),

                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(bottom:20.h,),
                      child: Column(

                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: 8.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: 8.0.w,left: 8.w),
                                  child: Image.asset(images[index],
                                      width: 32.w, height: 28.h, fit: BoxFit.fill),
                                ),
                                Text(
                                  title[index],
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                  Spacer(),
                                  Padding(
                                padding:  EdgeInsets.only(right: 8.w),
                                child: Text(date[index],style: TextStyle(fontSize: 10.sp)),
                              ),


                              ],
                            ),
                          ),
                          Text(
                            subTitle[index],
                            maxLines: 4,style: TextStyle(fontSize: 11.sp,color: Colors.black45),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: title.length,
              ),
            ),



            Padding(
              padding:  EdgeInsets.only(left: 16.0, top: 25.h),
              child: Text(
                "Yesterday",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4.r)), //border corner radius
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow

                      spreadRadius:1,
                      blurRadius:10,
                    ),

                  ],
                ),
                child:
                Padding(
                  padding:  EdgeInsets.only(bottom:20.h),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 8.h),
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: 8.0.w,left: 10.w),
                              child:Image.asset("assets/images/n3.png",
                                  width: 32.w, height: 28.h, fit: BoxFit.fill),
                            ),
                            Text(
                              "Budget overspending",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Spacer(),
                            Padding(
                              padding:  EdgeInsets.only(right: 8.w),
                              child: Text("1:30 pm",style: TextStyle(fontSize: 10.sp)),
                            ),


                          ],
                        ),
                      ),
                      Text(
                        "     Your monthly expense almost break "
                            "\n      the budget.",
                        maxLines: 4,style: TextStyle(fontSize: 11.sp,color: Colors.black45),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),



              ),
            ),
            SizedBox(
              height: 210.h,
            )
          ],
        ),
      ),
    );
  }
}


class DeleteScreen extends StatelessWidget {
  const DeleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => NavScreen(),));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xffEFEFEF),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/deletenot.png",width: 100.w,height: 100.h),
              SizedBox(
                height: 14.h,
              ),
              Text(
                "No notifications yet",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                textAlign: TextAlign.center,
                "You have no notifications right now. Come back later.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
