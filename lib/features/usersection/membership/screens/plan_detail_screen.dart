import 'package:doctor_score/utils/customwidgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_text_style.dart';

class PlanDetailScreen extends StatelessWidget {
  final String planPrice;
  const PlanDetailScreen({super.key, required this.planPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('\u20B9 $planPrice Plan Details',
        style: CustomTextStyle.appBarStyle,
        ),
        foregroundColor: Colors.white,
        backgroundColor: AppColor.primaryColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            'Plan Basic Info',
            style: CustomTextStyle.titleStyle(),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Plan Price',
                  style: CustomTextStyle.subtitleStyle(),
                ),
                Text(
                  "\u20B9 $planPrice",
                  style: CustomTextStyle.contentStyle(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Plan Name',
                  style: CustomTextStyle.subtitleStyle(),
                ),
                Text(
                  "golden",
                  style: CustomTextStyle.contentStyle(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Plan Validity',
                  style: CustomTextStyle.subtitleStyle(),
                ),
                Text(
                  "30 Days",
                  style: CustomTextStyle.contentStyle(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Plan Description',
            style: CustomTextStyle.titleStyle(),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum, diam sit amet pharetra semper, leo quam semper tellus, vitae ultrices eros odio id elit.',
              style: CustomTextStyle.contentStyle(),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Plan Features',
            style: CustomTextStyle.titleStyle(),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              Text(
                'Feature 1',
                style: CustomTextStyle.contentStyle(),
              ),
              Text(
                'Features 2',
                style: CustomTextStyle.contentStyle(),
              ),
              Text(
                'Features 3',
                style: CustomTextStyle.contentStyle(),
              ),
              Text(
                'Features 4',
                style: CustomTextStyle.contentStyle(),
              ),
              Text(
                'Features 5',
                style: CustomTextStyle.contentStyle(),
              ),
            ],
          ),
          const SizedBox(height: 16),
          CustomElevatedButton(
              onPressed: (){},
              name: "Pay",
          ),
        ],
      )
    );
  }
}
