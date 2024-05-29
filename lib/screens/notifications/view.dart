import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
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
            trailing: Text("5:28 pm"),
            tileColor: Colors.white,
            contentPadding: EdgeInsets.all(16),
            leading: Image.network(
                "https://img.freepik.com/free-vector/notification-bell_78370-542.jpg?t=st=1712071127~exp=1712074727~hmac=9710e3cc5a603a689fba6c9da3f7d2d9c89bf866fa005a372b47dce596fd4f6b&w=740",
                width: 28,
                height: 28,
                fit: BoxFit.fill),
            title: Text(
              "Balance notification",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            subtitle: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Congratulations! You’re back in positive balance (EGP 3000). You can breathe a bit easier for a while."),
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
    );
  }
}
