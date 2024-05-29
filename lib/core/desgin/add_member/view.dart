import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddMemberScreen extends StatelessWidget {
  CustomAddMemberScreen({Key? key,required this.x,required this.memberName, }) : super(key: key);
  int x;
  String memberName;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 68,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.h,
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(42)),
                border: Border.all(color: Theme.of(context).primaryColor),
                color: Colors.white),
            child: Center(
              child: Text(
                "$x",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          Text(
            memberName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),

          Container(
            width: 32.w,
            height: 32.h,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(42)),
                border: Border.all(color: Theme.of(context).primaryColor),
                color: Colors.white),
            child: Center(
                child: Icon(
                  Icons.edit,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Container(
            width: 32.w,
            height: 32.h,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(42)),
                border: Border.all(color: Theme.of(context).primaryColor),
                color: Colors.white),
            child: Center(
                child: Icon(
                  Icons.delete,
                  color: Theme.of(context).primaryColor,
                )),
          ),
        ],
      ),
    );
  }

}