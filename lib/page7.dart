import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class ReportScreen extends StatefulWidget {
  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Report',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                _buildTodayReportCard(),
                SizedBox(height: 16.h),
                _buildDashboardCard(),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Text(
                      'Check History',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.blue,))
                  ],
                ),
                SizedBox(height: 10.h),
                _buildDaysRow(),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          _buildMedicineSchedule(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.add, size: 30.r,color: Colors.white,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.r),
        ),
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

  Widget _buildTodayReportCard() {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today's Report",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildReportItem('5', 'Total'),
              _buildReportItem('3', 'Taken'),
              _buildReportItem('1', 'Missed'),
              _buildReportItem('1', 'Snoozed'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReportItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildDashboardCard() {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Check Dashboard',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 200.w,
                child: Text(
                  'Here you will find everything related to your active and past medicines',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,

                  ),
                ),
              ),
            ],
          ),

          Image.asset('assets/progress.png',height: 60.h,)
        ],
      ),
    );
  }

  Widget _buildDaysRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        7,
            (index) => Column(
              children: [
                Text(
                  'Day',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12.sp,
                  ),
                ),
                Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                color: index == 0 ? Colors.blue : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Center(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: index == 0 ? Colors.white : Colors.black,
                  ),
                ),
                          ),
                        ),
              ],
            ),
      ),
    );
  }

  Widget _buildMedicineSchedule() {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          buildTimeSection("Morning 08:00 am", [
            buildMedicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 01", true, false,'Taken'),
            SizedBox(height: 10.h),
            buildMedicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 27", false, false,'Missed'),
          ]),
          buildTimeSection("Afternoon 02:00 pm", [
            buildMedicineCard("Calpol 500mg Tablet", "After Food", "Day 01", false, true,'Snoozed'),
          ]),
          buildTimeSection("Night 09:00 pm", [
            buildMedicineCard("Calpol 500mg Tablet", "Before Sleep", "Day 03", false, false,'Taken'),
          ]),
        ],
      ),
    );
  }
  Widget buildTimeSection(String title, List<Widget> medicines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.h),
        ...medicines,
      ],
    );
  }

  Widget buildMedicineCard(
      String name, String time, String day, bool isTaken, bool isSnoozed,String status) {
    IconData statusIcon =
    // isTaken ? Icons.check_circle : isSnoozed ? Icons.alarm :
    Icons.notifications_none;
    Color statusColor =
    isTaken ? Colors.green : isSnoozed ? Colors.orange : Colors.red;

    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.pink[100],
              child: Icon(Icons.water_drop, color: Colors.pink, size: 20.r),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "$time \u2022 $day",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Icon(statusIcon, color: statusColor, size: 24.r),
                SizedBox(height: 2.h,),
                Text(
                  status,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMedicineCard(String name, String timing, String day,
      String status, Color statusColor) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                timing,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                day,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: statusColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
