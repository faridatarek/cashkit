
import 'package:cashkit/screens/Goals/all_goals/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Your_goal extends StatelessWidget {
  final Data data;
  final VoidCallback onDelete;
  Your_goal({required this.data,required this.onDelete});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Your Goal",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading: InkWell(
          onTap:  (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>All_Goals ()));
          },
          child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),)),
        actions: [
          PopupMenuButton<String>(
           color: Color(0xffF6F6F6),
          icon: Icon(Icons.more_vert,color: Colors.black),

          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[

            PopupMenuItem<String>(

              value: 'edit',
              child: ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
              ),
            ),
            PopupMenuItem<String>(
              value: 'delete',
              child: ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
              ),
            ),
          ],
          onSelected: (String action) {
            if (action == 'edit') {
              // Handle edit action
              // You can navigate to an edit screen or perform any other action
            } else if (action == 'delete') {
              onDelete(); // Call the delete callback
            }
          },
        ),],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         Container(
           child:Padding(
             padding: const EdgeInsets.all(12.0),
             child: Text("${data.goalName}",style: TextStyle(fontSize: 17,color: Color(0xff292929),fontWeight: FontWeight.w500),),
           ),
           height: 55,
           width:MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),border: Border.all(color:Theme.of(context).primaryColor,
             width: 1.7,)
           ),
         ),
          SizedBox(height: 18,),
          Container(
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("${data.totalAmount}",style: TextStyle(fontSize: 17,color: Color(0xff292929),fontWeight: FontWeight.w500),),
            ),
            height: 55,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),border: Border.all(color:Theme.of(context).primaryColor,
              width: 1.7,)
            ),
          ),
          SizedBox(height: 18,),
          Container(
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("${data.firstdate}",style: TextStyle(fontSize: 17,color: Color(0xff292929),fontWeight: FontWeight.w500),),
            ),
            height: 55,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),border: Border.all(color:Theme.of(context).primaryColor,
              width: 1.7,)
            ),
          ),
          SizedBox(height: 18,),
          Container(
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("${data.lastdate}",style: TextStyle(fontSize: 17,color: Color(0xff292929),fontWeight: FontWeight.w500),),
            ),
            height: 55,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),border: Border.all(color:Theme.of(context).primaryColor,
              width: 1.7,)
            ),
          )
        ]),
      ),

    );
  }
}
