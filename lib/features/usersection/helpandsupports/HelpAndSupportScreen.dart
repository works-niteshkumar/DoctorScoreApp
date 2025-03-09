import 'package:doctor_score/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../utils/customwidgets/custom_text_style.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support',
        style: CustomTextStyle.appBarStyle,
        ),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Doctor Score App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our Doctor Score App helps you monitor your Doctor score, track financial activities, and improve your financial health. '
                  'If you have any queries or need assistance, feel free to reach out to us using the contact details below.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildContactInfo(Icons.email, 'support@doctorscoreapp.com'),
            _buildContactInfo(Icons.email, 'help@doctorscoreapp.com'),
            const SizedBox(height: 10),
            _buildContactInfo(Icons.phone, '+1 123-456-7890'),
            _buildContactInfo(Icons.phone, '+1 987-654-3210'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 10),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
