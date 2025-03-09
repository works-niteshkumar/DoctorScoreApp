
import 'package:doctor_score/features/usersection/membership/screens/plan_detail_screen.dart';
import 'package:doctor_score/utils/customwidgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_color.dart';

class MembershipPlanScreen extends StatelessWidget {
  const MembershipPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Membership',
          style: CustomTextStyle.appBarStyle,
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: AppColor.secondaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  'My Current Active plan',
                  style: CustomTextStyle.titleStyle(
                      fontSize: 20, color: AppColor.secondaryColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Material(
              elevation: 10,
              color: AppColor.secondaryColor,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Package Price:',
                          style: CustomTextStyle.subtitleStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          '\u20B9 399',
                          style:
                              CustomTextStyle.contentStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Package Name:',
                          style: CustomTextStyle.subtitleStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Golden',
                          style:
                              CustomTextStyle.contentStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Package Validity:',
                          style: CustomTextStyle.subtitleStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          '30 Days',
                          style:
                              CustomTextStyle.contentStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Accessibility:',
                          style: CustomTextStyle.subtitleStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width * 0.47,
                          child: Text(
                            'Check Score, Apply for loan, Get tips,Check Score, Apply for loan, Get tips',
                            style: CustomTextStyle.contentStyle(
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
            child: Row(children: [
              Text(
                'Our Packages',
                style: CustomTextStyle.titleStyle(
                    fontSize: 20, color: AppColor.secondaryColor),
              ),
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\u20B9 399',
                                  style: CustomTextStyle.subtitleStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '30 Days',
                                      style: CustomTextStyle.subtitleStyle(
                                          fontSize: 15),
                                    ),
                                    Text(
                                      'Validity',
                                      style: CustomTextStyle.subtitleStyle(
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.secondaryColor,
                                    fixedSize: const Size(80, 35),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    "Pay",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\u2022 \u20B9 399 per month',
                                        style: CustomTextStyle.contentStyle(
                                            fontSize: 14)),
                                    const SizedBox(height: 8),
                                    Text('\u2022 Pack Name',
                                        style: CustomTextStyle.contentStyle(
                                            fontSize: 14)),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                            '\u2022 30 days of unlimited access...',
                                            style: CustomTextStyle.contentStyle(
                                                fontSize: 14)),
                                        const SizedBox(width: 8),
                                        InkWell(
                                          onTap: () {
                                            debugPrint(
                                                "See More Tapped on index: $index");
                                            Get.to(()=> PlanDetailScreen(
                                                planPrice: '$index'));
                                          },
                                          child: Text(
                                            'See More',
                                            style: CustomTextStyle.contentStyle(
                                                fontSize: 14,
                                                color: AppColor.secondaryColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
