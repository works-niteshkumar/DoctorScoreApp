import 'package:doctor_score/features/usersection/homescreens/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../../utils/app_color.dart';
import '../calculator/screens/sip_emi_calculator_screen.dart';
import '../profile/screens/profile_screen.dart';
import '../tips/screens/tips_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selected = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    SipEmiCalculatorScreen(),
    const TipsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: StylishBottomBar(
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected,
        notchStyle: NotchStyle.circle,
        backgroundColor: Colors.white,
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.blink,
          iconStyle: IconStyle.Default,
        ),
        items: [
          BottomBarItem(
            icon: _navIcon(Icons.credit_score_outlined),
            selectedIcon: _navIcon(Icons.credit_score, isSelected: true),
            selectedColor: AppColor.primaryColor,
            title: const Text('DoctorScore', style: TextStyle(fontSize: 12)),
          ),
          BottomBarItem(
            icon: _navIcon(Icons.calculate_outlined),
            selectedIcon: _navIcon(Icons.calculate, isSelected: true),
            selectedColor: AppColor.primaryColor,
            title: const Text('SIP & EMI', style: TextStyle(fontSize: 12)),
          ),
          BottomBarItem(
            icon: _navIcon(Icons.tips_and_updates_outlined),
            selectedIcon: _navIcon(Icons.tips_and_updates, isSelected: true),
            selectedColor: AppColor.primaryColor,
            title: const Text('Tips', style: TextStyle(fontSize: 12)),
          ),
          BottomBarItem(
            icon: _navIcon(Icons.person_outline_outlined),
            selectedIcon: _navIcon(Icons.person, isSelected: true),
            selectedColor: AppColor.primaryColor,
            title: const Text('Profile', style: TextStyle(fontSize: 12)),
          ),
        ],
        onTap: (index) {
          if (index == selected) return;
          setState(() {
            selected = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        elevation: 5,
        backgroundColor: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: screens[selected],
      ),
    );
  }

  // Helper function for icons
  Widget _navIcon(IconData icon, {bool isSelected = false}) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: isSelected ? AppColor.primaryColor : Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(icon, size: 20),
    );
  }
}


// import 'package:doctor_score/features/usersection/homescreens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_boxicons/flutter_boxicons.dart';
// import 'package:get/get.dart';
// import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
//
// import '../../../utils/app_color.dart';
//
// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});
//
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen> {
//   int selected = 0;
//   bool heart = false;
//   final controller = PageController();
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true, //to make floating action button notch transparent
//
//       //to avoid the floating action button overlapping behavior,
//       // when a soft keyboard is displayed
//       resizeToAvoidBottomInset: false,
//       bottomNavigationBar: StylishBottomBar(
//         hasNotch: true,
//         fabLocation: StylishBarFabLocation.center,
//         currentIndex: selected,
//         notchStyle: NotchStyle.circle,
//         backgroundColor: Colors.white,
//         option: AnimatedBarOptions(
//           barAnimation: BarAnimation.blink,
//           iconStyle: IconStyle.Default,
//         ),
//
//         items: [
//           BottomBarItem(
//             icon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: Colors.grey),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.credit_score_outlined, size: 20)),
//             selectedIcon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: AppColor.primaryColor),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.credit_score, size: 20)),
//             selectedColor: AppColor.primaryColor,
//             unSelectedColor: Colors.grey,
//             title: const Text(
//               'DoctorScore',
//               style: TextStyle(fontSize: 12),
//             ),
//           ),
//           BottomBarItem(
//             icon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: Colors.grey),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.safety_check_outlined, size: 20)),
//             selectedIcon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: AppColor.primaryColor),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.safety_check, size: 20)),
//             selectedColor: AppColor.primaryColor,
//             title: const Text(
//               'Credit Analysis',
//               style: TextStyle(fontSize: 12),
//             ),
//           ),
//           BottomBarItem(
//             icon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: Colors.grey),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.currency_rupee_outlined, size: 20)),
//             selectedIcon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: AppColor.primaryColor),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.currency_rupee, size: 20)),
//             selectedColor: AppColor.primaryColor,
//             title: const Text(
//               'Loan & Cards',
//               style: TextStyle(fontSize: 12),
//             ),
//           ),
//           BottomBarItem(
//             icon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: Colors.grey),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.local_offer_outlined, size: 20)),
//             selectedIcon: Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2, color: AppColor.primaryColor),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Icon(Icons.local_offer, size: 20)),
//             selectedColor: AppColor.primaryColor,
//             title: const Text(
//               'Offers',
//               style: TextStyle(fontSize: 12),
//             ),
//           ),
//         ],
//         onTap: (index) {
//           if (index == selected) return;
//           controller.jumpToPage(index);
//           setState(() {
//             selected = index;
//           });
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             heart = !heart;
//           });
//         },
//         shape: const CircleBorder(
//             // side: BorderSide(
//             //   width: 0,
//             //   color: AppColor.primaryColor,
//             // ),
//             ),
//         elevation: 5,
//         backgroundColor: Colors.white,
//         child:
//         ClipRRect(
//             borderRadius: BorderRadius.circular(30),
//             child: Image.asset("assets/images/logo.png")),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: SafeArea(
//         child: PageView(
//           controller: controller,
//           pageSnapping: false,
//           children: [
//             const HomeScreen(),
//             Container(
//                 height: context.mediaQuerySize.height,
//                 width: context.mediaQuerySize.width,
//                 color: Colors.yellow,
//                 child: const Center(child: Text('credit analysis'))),
//             const Center(child: Text('Loan and cards')),
//             const Center(child: Text('Offers')),
//           ],
//         ),
//       ),
//     );
//   }
// }
