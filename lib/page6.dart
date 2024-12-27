import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineSchedulePage extends StatefulWidget {
  @override
  _MedicineSchedulePageState createState() => _MedicineSchedulePageState();
}

class _MedicineSchedulePageState extends State<MedicineSchedulePage> {
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20.h,),
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
          Divider(thickness: 1, color: Colors.grey[300]),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                buildTimeSection("Morning 08:00 am", [
                  buildMedicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 01", true, true),
                  SizedBox(height: 10.h,),
                  buildMedicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 27", false, false),
                ]),
                buildTimeSection("Afternoon 02:00 pm", [
                  buildMedicineCard("Calpol 500mg Tablet", "After Food", "Day 01", false, true),
                ]),
                buildTimeSection("Night 09:00 pm", [
                  buildMedicineCard("Calpol 500mg Tablet", "Before Sleep", "Day 03", false, false),
                ]),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.r)),
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(height: 1.h,color: Colors.grey.shade200,),
            SizedBox(width: 4.w,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,),
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
          ],
        ),
      ),
    );
  }

  Widget buildTimeSection(String title, List<Widget> medicines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        ...medicines,
      ],
    );
  }

  Widget buildMedicineCard(
      String name, String time, String day, bool isTaken, bool isSnoozed) {
    IconData statusIcon =
    // isTaken ? Icons.check_circle : isSnoozed ? Icons.alarm :
    Icons.notifications_none;
    Color statusColor =
    isTaken ? Colors.green : isSnoozed ? Colors.orange : Colors.red;

    return Container(

      decoration: BoxDecoration(
          color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink[100],
              child: Icon(Icons.water_drop, color: Colors.pink),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "$time \u2022 $day",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Icon(statusIcon, color: statusColor),
          ],
        ),
      ),
    );
  }
}


