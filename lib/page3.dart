import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineScreen extends StatefulWidget {
  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding:  EdgeInsets.only(left: 10.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Harry!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "5 Medicines Left",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.medical_services_outlined, color: Colors.blue),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.person, color: Colors.blue),
          // ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CircleAvatar(
              radius: 20.r,
              backgroundImage: NetworkImage(
                "https://via.placeholder.com/150", // Replace with the correct image URL
              ),
            ),
          ),
        ],
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarBrightness: Brightness.dark,
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.h),
            // Date Navigator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Thu",
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
                Text(
                  "Fri",
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
                Icon(Icons.arrow_back_ios,color: Colors.blue.shade200,size: 20.r,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    "Saturday, Sep 3",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios,color: Colors.blue.shade200,size: 20.r,),
                Text(
                  "Sun",
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
                Text(
                  "Mon",
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 30.h),

            // Empty State Illustration
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.inbox_rounded,
                    size: 100.sp,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Nothing Is Here, Add a Medicine",
                    style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(40.r)
        ),
        child: Icon(Icons.add, size: 24.sp, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.home_filled, color: Colors.blue.shade200,size: 34.r,),
                  ),
                  Text('Home',style: TextStyle(fontSize: 12.sp,color: Colors.blue.shade200,),)
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.analytics_outlined, color: Colors.black,size: 34.r,),
                  ),
                  Text('Report',style: TextStyle(fontSize: 12.sp,color: Colors.black,),)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

