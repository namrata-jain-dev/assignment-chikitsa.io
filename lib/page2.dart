import 'package:assignment_namrata_jain/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen2 extends StatefulWidget {
  @override
  State<SignInScreen2> createState() => _SignInScreen2State();
}

class _SignInScreen2State extends State<SignInScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Column(
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
              ],
            ),
            SizedBox(height: 40.h),

            // Email Field
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                hintText: "jamescordon@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                labelText: "Password",
                errorText: "Password don't match",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
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
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Sign-In Button
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
