import 'package:cashkit/screens/profile/rosca_template/create_rosca/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyRoscaScreen extends StatelessWidget {
  const EmptyRoscaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEFEFEF),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 70.0,right:10),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatRosca(),
                  ));

            },
            child:  Container(
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
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xffEFEFEF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            "ROSCA",
            style: TextStyle(color: Colors.black,fontSize: 18.sp),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 95.h),
                child: Image.asset("assets/images/rosca (1) 1 (1).png",width: 295.w,height: 250.h),
              ),
              Text(
                "Add New ROSCA",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,color: Theme.of(context).primaryColor

                ),
              ),
            ],
          ),
        ));
  }
}
