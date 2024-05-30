import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/n1.png",
      "assets/images/n2.png",
      "assets/images/n3.png",
    ];
    List title = [
      "Balance notification",
      "Upcoming bill",
      "Budget overspending",
    ];
    List subTitle = [
      "Congratulations! You’re back in positive balance (EGP 3000). You can breathe a bit easier for a while.",
      "Internet bill will be due in 3 days.",
      "Your monthly expense almost break the budget.",
    ];
    List date = ["5:28 pm", "3:28 pm", "1:30 pm"];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DeleteScreen(),
              ));
        },
        child: Icon(Icons.delete),
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
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
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            trailing: Text(date[index]),
            tileColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            leading: Image.asset(images[index],
                width: 28, height: 28, fit: BoxFit.fill),
            title: Text(
              title[index],
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            subtitle: Text(
              subTitle[index],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        itemCount: 3,
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
            Navigator.pop(context);
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
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
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
              Image.asset("assets/images/deletenot.png"),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "No notifications yet",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                textAlign: TextAlign.center,
                "You have no notifications right now. Come \n back later.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
