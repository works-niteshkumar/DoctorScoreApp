import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../utils/app_color.dart';
import '../widgets/drawer_items_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? lastPressed;
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  Future<bool> _onWillPop() async {
    DateTime now = DateTime.now();
    if (lastPressed == null || now.difference(lastPressed!) > const Duration(seconds: 2)) {
      lastPressed = now;
      Fluttertoast.showToast(
        msg: "Press again to exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        bool shouldExit = await _onWillPop();
        if (shouldExit) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset("assets/images/logo.png",
                      height: 40, width: 40)),
              const SizedBox(width: 10),
              const Text(
                'Doctor Score',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        drawer: const Drawer(
          width: 250,
          backgroundColor: AppColor.tertiaryColor,
          child: DrawerItemsWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: CustomTextStyle.titleStyle(
                          fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      'Preeyam Yadav',
                      style: CustomTextStyle.titleStyle(
                          fontSize: 20, color: Colors.black),
                    ),
                    // const Spacer(),
                    // const Icon(Icons.person,color: Colors.white)
                  ],
                ),
              ),
              Material(
                elevation: 10, // Shadow intensity
                borderRadius:
                    BorderRadius.circular(20), // Optional: rounded corners
                shadowColor: Colors.black.withOpacity(0.5), // Shadow color
                child: Container(
                  height: 330,
                  width: context.mediaQuerySize.width - 40,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Credit Score Header
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Credit Score",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Updated on: 24 Feb, 2025",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Powered by",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "QuickFix",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Circular Score Indicator (Replace with actual gauge if needed)
                      Expanded(
                        child: SfRadialGauge(
                          axes: <RadialAxis>[
                            RadialAxis(
                              startAngle: 180,
                              endAngle: 0,
                              minimum: 300,
                              maximum: 900,
                              showLabels: true,
                              showTicks: false,
                              canScaleToFit: true,
                              canRotateLabels: false,
                              showLastLabel: true,
                              radiusFactor: 1.0,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 300,
                                    endValue: 450,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 20),
                                GaugeRange(
                                    startValue: 450,
                                    endValue: 600,
                                    color: Colors.orange,
                                    startWidth: 10,
                                    endWidth: 20),
                                GaugeRange(
                                    startValue: 600,
                                    endValue: 750,
                                    color: Colors.yellow,
                                    startWidth: 10,
                                    endWidth: 20),
                                GaugeRange(
                                    startValue: 750,
                                    endValue: 900,
                                    color: Colors.green,
                                    startWidth: 10,
                                    endWidth: 20),
                              ],
                              pointers: const <GaugePointer>[
                                NeedlePointer(
                                  value: 700,
                                  enableAnimation: true,
                                  needleColor: Colors.black,
                                  tailStyle: TailStyle(
                                      length: 0.1, width: 5, color: Colors.black),
                                  knobStyle: KnobStyle(
                                      color: Colors.black,
                                      sizeUnit: GaugeSizeUnit.factor),
                                ),
                              ],
                              annotations: const <GaugeAnnotation>[
                                GaugeAnnotation(
                                  widget: Text("Poor",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  angle: 210,
                                  positionFactor: 1.2,
                                ),
                                GaugeAnnotation(
                                  widget: Text("Average",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  angle: 270,
                                  positionFactor: 1.2,
                                ),
                                GaugeAnnotation(
                                  widget: Text("Good",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  angle: 330,
                                  positionFactor: 1.2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Credit Health Status
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Credit Health Status: ",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Good",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.info_outline, size: 16, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              fixedSize: const Size(140, 40),
                              side: const BorderSide(color: Colors.orange),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text("View Analysis",
                                style: TextStyle(color: Colors.orange)),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              fixedSize: const Size(140, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text("Get Report",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Other widgets...
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: context.mediaQuerySize.width * 0.9,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColor.primaryColor,
                        // AppColor.secondaryColor,
                        AppColor.tertiaryColor,
                      ], // Green gradient
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Image.asset(
                              "assets/images/logo.png", // Replace with actual asset path
                              height: 50,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Doctor Score",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),

                                // Description
                                const Text(
                                  "Save up to 10% on your monthly EMIs by reducing high-cost loans with Doctor Score",
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.white),
                                ),

                                const SizedBox(height: 16),

                                // Button
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        "Explore",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Personalized offers
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Personalized offers",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 150,
                  width: context.mediaQuerySize.width*0.9,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.shadePrimaryColor200,
                  ),
                  child: Row(
                    children: [

                      SizedBox(
                        height: 120,
                        width: 100,
                        child: Image.asset(
                          "assets/images/personalized_offer.png",
                          height: 120,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Hurry Up!",
                              style: TextStyle(fontSize: 20, color: AppColor.secondaryColor),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Get exclusive discounts on health insurance plans, car insurance, and more",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // other widget we can show here
            ],
          ),
        ),
      ),
    );
  }
}
