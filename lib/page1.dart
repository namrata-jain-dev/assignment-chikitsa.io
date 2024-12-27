import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// colors.dart
class AppColors {
  static const Color primary = Color(0xFF5F8CFB);
  static const Color textColor = Colors.black;
  static const Color error = Colors.red;
  static const Color grey = Colors.grey;
  static const Color background = Colors.white;
}

// Main file

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Center(
              child: Column(
                children: [
                  // App Logo
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: AppColors.primary.withOpacity(0.1),
                    child: Icon(Icons.medical_services, color: AppColors.primary, size: 40.sp),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Adhicine",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: AppColors.primary),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),

            // Sign In Title
            Text(
              "Sign In",
              style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold, color: AppColors.textColor),
            ),
            SizedBox(height: 20.h),

            // Email Field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: AppColors.primary),
                hintText: "jamescordon@gmail.com",
                hintStyle: TextStyle(color: AppColors.grey, fontSize: 14.sp),
                errorText: "Incorrect Email Address",
                errorStyle: TextStyle(color: AppColors.error, fontSize: 12.sp),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: AppColors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Password Field
            TextFormField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: AppColors.primary),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: AppColors.grey, fontSize: 14.sp),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: AppColors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: AppColors.primary, fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(color: AppColors.background, fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Divider
            Row(
              children: [
                Expanded(child: Divider(thickness: 1, color: AppColors.grey)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    "OR",
                    style: TextStyle(color: AppColors.grey, fontSize: 14.sp),
                  ),
                ),
                Expanded(child: Divider(thickness: 1, color: AppColors.grey)),
              ],
            ),
            SizedBox(height: 20.h),

            // Google Sign In
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  "assets/search.png",
                  width: 20.w,
                  height: 20.h,
                ),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(color: AppColors.textColor, fontSize: 16.sp),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  side: BorderSide(color: AppColors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),

            // Sign Up
            Center(
              child: Text.rich(
                TextSpan(
                  text: "New to Adhicine? ",
                  style: TextStyle(color: AppColors.grey, fontSize: 14.sp),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
