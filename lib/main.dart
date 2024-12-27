import 'package:assignment_namrata_jain/page1.dart';
import 'package:assignment_namrata_jain/page2.dart';
import 'package:assignment_namrata_jain/page3.dart';
import 'package:assignment_namrata_jain/page4.dart';
import 'package:assignment_namrata_jain/page5.dart';
import 'package:assignment_namrata_jain/page6.dart';
import 'package:assignment_namrata_jain/page7.dart';
import 'package:assignment_namrata_jain/page8.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(title: 'Assignment By Namrata'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: Drawer(

        child: ListView(
          padding:  EdgeInsets.only(top: 50.r),
          children: [
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page1'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page2'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen2()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page3'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineScreen()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page4'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DeviceNotConnectedScreen()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page5'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMedicinePage()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page6'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineSchedulePage()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page7'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportScreen()));
              },
            ),
            SizedBox(height: 10.h,),
            ListTile(
              tileColor: Colors.grey.shade200,
              title: Text('Page8'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 200.w,
              padding: EdgeInsets.all(8.r),
              child: const Center(
                child: Text(
                  style: TextStyle(color: Colors.white),
                  'Assignment By Namrata Jain Kindly Please Open the Drawer and Find The ui of pages',
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
