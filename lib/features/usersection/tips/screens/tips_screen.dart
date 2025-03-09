import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/customwidgets/custom_text_style.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Credit Score Improvement Tips',
            style: CustomTextStyle.appBarStyle,
          ),
          backgroundColor: AppColor.primaryColor,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            TipTile(
              title: "Pay Bills on Time",
              content:
                  "Timely payments help maintain a positive credit history and boost your score.",
            ),
            TipTile(
              title: "Reduce Credit Utilization",
              content:
                  "Keep your credit card balance below 30% of your total limit to improve your score.",
            ),
            TipTile(
              title: "Avoid New Credit Inquiries",
              content:
                  "Too many hard inquiries in a short period can lower your score. Apply for new credit only when necessary.",
            ),
            TipTile(
              title: "Maintain Old Credit Accounts",
              content:
                  "Long credit history improves your score, so avoid closing old accounts.",
            ),
            TipTile(
              title: "Diversify Credit Mix",
              content:
                  "A mix of credit types (loans, credit cards) shows responsible credit management.",
            ),
            TipTile(
              title: "Check Credit Reports Regularly",
              content:
                  "Monitor your reports for errors and dispute any inaccuracies.",
            ),
            TipTile(
              title: "Reduce Credit Utilization",
              content:
              "Keep your credit card balance below 30% of your total limit to improve your score.",
            ),
            TipTile(
              title: "Avoid New Credit Inquiries",
              content:
              "Too many hard inquiries in a short period can lower your score. Apply for new credit only when necessary.",
            ),
            TipTile(
              title: "Maintain Old Credit Accounts",
              content:
              "Long credit history improves your score, so avoid closing old accounts.",
            ),
            TipTile(
              title: "Diversify Credit Mix",
              content:
              "A mix of credit types (loans, credit cards) shows responsible credit management.",
            ),
            TipTile(
              title: "Check Credit Reports Regularly",
              content:
              "Monitor your reports for errors and dispute any inaccuracies.",
            ),
          ],
        ),
      ),
    );
  }
}

class TipTile extends StatelessWidget {
  final String title;
  final String content;

  const TipTile({required this.title, required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ExpansionTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/logo.png")),
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(title, style: CustomTextStyle.subtitleStyle()),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(content, textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}
