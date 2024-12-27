import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMedicinePage extends StatefulWidget {
  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          "Add Medicines",
          style: TextStyle(color: Colors.black, fontSize: 18.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Medicine Name
              TextField(
                decoration: InputDecoration(
                  hintText: "Search Medicine Name",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // Compartment Section
              Text("Compartment", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                      (index) => Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: index == 0 ? Colors.blue : Colors.transparent),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // Colour Section
              Text("Colour", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Colors.pink,
                  Colors.purple,
                  Colors.red,
                  Colors.green,
                  Colors.orange,
                  Colors.blue,
                ]
                    .map(
                      (color) => CircleAvatar(
                    radius: 20.r,
                    backgroundColor: color,
                  ),
                )
                    .toList(),
              ),
              SizedBox(height: 20.h),

              // Type Section
              Text("Type", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTypeOption("Tablet", Icons.circle_outlined),
                  buildTypeOption("Capsule", Icons.circle_outlined),
                  buildTypeOption("Cream", Icons.circle_outlined),
                  buildTypeOption("Liquid", Icons.circle_outlined),
                ],
              ),
              SizedBox(height: 20.h),

              // Quantity Section
              Text("Quantity", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Take 1/2 Pill",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  IconButton(
                    icon: Icon(Icons.remove, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              // Total Count
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Count", style: TextStyle(fontSize: 16.sp)),
                  Text("01", style: TextStyle(fontSize: 16.sp)),
                ],
              ),
              Slider(
                value: 1,
                min: 1,
                max: 100,
                onChanged: (value) {},
              ),
              SizedBox(height: 20.h),

              // Set Date
              Text("Set Date", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDateButton("Today"),
                  buildDateButton("End Date"),
                ],
              ),
              SizedBox(height: 20.h),

              // Frequency of Days
              Text("Frequency of Days", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              DropdownButtonFormField<String>(
                value: "Everyday",
                items: ["Everyday", "Alternate Days", "Weekly"]
                    .map((value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // How many times a Day
              Text("How many times a Day", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              DropdownButtonFormField<String>(
                value: "Three Time",
                items: ["One Time", "Two Time", "Three Time"]
                    .map((value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // Dose Times
              Column(
                children: [
                  buildDoseOption("Dose 1"),
                  buildDoseOption("Dose 2"),
                  buildDoseOption("Dose 3"),
                ],
              ),
              SizedBox(height: 20.h),

              // Before/After Food
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildFoodOption("Before Food", true),
                  buildFoodOption("After Food", false),
                  buildFoodOption("Before Sleep", false),
                ],
              ),
              SizedBox(height: 20.h),

              // Add Button
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 40.w),
                    child: Text("Add", style: TextStyle(fontSize: 16.sp,color: Colors.white)),
                  ),
                ),
              ), 
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTypeOption(String title, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 40.r, color: Colors.pink),
        SizedBox(height: 10.h),
        Text(title, style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }

  Widget buildDateButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Text(title, style: TextStyle(fontSize: 14.sp, color: Colors.blue)),
    );
  }

  Widget buildDoseOption(String dose) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          Icon(Icons.access_time, size: 20.r, color: Colors.grey),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(dose, style: TextStyle(fontSize: 14.sp)),
          ),
          Icon(Icons.arrow_forward_ios, size: 14.r, color: Colors.grey),
        ],
      ),
    );
  }

  Widget buildFoodOption(String title, bool selected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14.sp,
          color: selected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
