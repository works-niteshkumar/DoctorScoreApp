import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: CustomTextStyle.appBarStyle,
        ),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.shadePrimaryColor100,
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 140,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/images/logo.png"),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "John Doe Parkar",
                              style: CustomTextStyle.subtitleStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                    ),
                    const VerticalDivider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "PAN:",
                              style: CustomTextStyle.subtitleStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "ABCDE1234W",
                              style: CustomTextStyle.contentStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "DOB:",
                              style: CustomTextStyle.subtitleStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "78/45/2025",
                              style: CustomTextStyle.contentStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 30,
          //       itemBuilder: (context, index){
          //       return ListTile(
          //         title: Text("Item $index"),
          //         onTap: () => {},
          //       );
          //     }
          //   ),
          // ),
        ],
      ),
    );
  }
}
