import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    // backgroundImage: AssetImage("assets/profile_picture.png"), // Replace with actual image asset or network image
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Take Care!",
                        style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                      ),
                      Text(
                        "Richa Bose",
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Settings Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSettingsOption(Icons.notifications, "Notification", "Check your medicine notification"),
                  buildSettingsOption(Icons.volume_up, "Sound", "Ring, Silent, Vibrate"),
                  buildSettingsOption(Icons.person, "Manage Your Account", "Password, Email ID, Phone Number"),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Device Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Device",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.all(16.r),
                    child: Column(
                      children: [
                        buildDeviceOption(Icons.bluetooth, "Connect", "Bluetooth, Wi-Fi"),
                        Divider(),
                        buildDeviceOption(Icons.volume_up, "Sound Option", "Ring, Silent, Vibrate"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Caretakers Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Caretakers: 03",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.all(16.r),
                    child: Row(
                      children: [
                        buildCaretakerAvatar("Dipa Luna"),
                        buildCaretakerAvatar("Roz Sod."),
                        buildCaretakerAvatar("Sunny Tu."),
                        buildCaretakerAvatar("Add"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Doctor Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: 1.sh,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.all(16.r),
                child: Column(
                  children: [
                    Icon(Icons.add, size: 40.r, color: Colors.blue),
                    SizedBox(height: 10.h),
                    Text(
                      "Add Your Doctor",
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Or use invite link",
                      style: TextStyle(fontSize: 14.sp, color: Colors.orange),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Privacy and Terms Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFooterOption("Privacy Policy"),
                  buildFooterOption("Terms of Use"),
                  buildFooterOption("Rate Us"),
                  buildFooterOption("Share"),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Logout Button
            Padding(
              padding:  EdgeInsets.all(16.r),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  minimumSize: Size(1.sh, 40.h)
                ),
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.blue, fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsOption(IconData icon, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Icon(icon, size: 24.r, color: Colors.grey),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDeviceOption(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Icon(icon, size: 24.r, color: Colors.blue),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCaretakerAvatar(String name) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundColor: Colors.grey[300],
            child: name == "Add"
                ? Icon(Icons.add, size: 24.r, color: Colors.grey)
                : Text(
              name[0],
              style: TextStyle(fontSize: 20.sp, color: Colors.black),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            name,
            style: TextStyle(fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  Widget buildFooterOption(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Text(
        title,
        style: TextStyle(fontSize: 16.sp, color: Colors.grey),
      ),
    );
  }
}
