import 'package:doctor_score/utils/app_color.dart';
import 'package:doctor_score/utils/customwidgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../../utils/customwidgets/custom_text_style.dart';

class SipEmiCalculatorScreen extends StatefulWidget {
  @override
  _SipEmiCalculatorScreenState createState() => _SipEmiCalculatorScreenState();
}

class _SipEmiCalculatorScreenState extends State<SipEmiCalculatorScreen> {
  final _formKeySIP = GlobalKey<FormState>();
  final _formKeyEMI = GlobalKey<FormState>();

  final TextEditingController sipAmountController = TextEditingController();
  final TextEditingController sipRateController = TextEditingController();
  final TextEditingController sipTenureController = TextEditingController();

  final TextEditingController loanAmountController = TextEditingController();
  final TextEditingController loanRateController = TextEditingController();
  final TextEditingController loanTenureController = TextEditingController();

  double sipResult = 0.0;
  double emiResult = 0.0;
  double totalInterest = 0.0;

  void calculateSIP() {
    if (_formKeySIP.currentState!.validate()) {
      double p = double.parse(sipAmountController.text);
      double r = double.parse(sipRateController.text) / 100 / 12;
      int n = int.parse(sipTenureController.text) * 12;

      if (r == 0) {
        // If interest rate is 0%, use simple formula
        sipResult = p * n;
      } else {
        // Compound interest formula for SIP
        sipResult = (p * (pow(1 + r, n) - 1) / r) * (1 + r);
      }
      setState(() {});
    }
  }

  void calculateEMI() {
    if (_formKeyEMI.currentState!.validate()) {
      double principal = double.parse(loanAmountController.text);
      double annualRate = double.parse(loanRateController.text);
      int years = int.parse(loanTenureController.text);

      double monthlyRate = annualRate / 12 / 100;
      int months = years * 12;

      if (monthlyRate == 0) {
        // If interest rate is 0%, use simple division
        emiResult = principal / months;
        totalInterest = 0;
      } else {
        // EMI formula with interest
        emiResult = (principal * monthlyRate * pow(1 + monthlyRate, months)) /
            (pow(1 + monthlyRate, months) - 1);
        totalInterest = (emiResult * months) - principal;
      }
      setState(() {});
    }
  }

  Widget buildOutlinedTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[200],
        // border: const OutlineInputBorder(
        //   borderSide: BorderSide(color: AppColor.primaryColor),
        // ),
        // focusedBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(color: AppColor.primaryColor, width: 1),
        // ),
        // errorBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.red, width: 1),
        // ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Can't be empty for better result";
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SIP & EMI Calculator",
          style: CustomTextStyle.appBarStyle,
        ),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SIP Calculator:",
                  style:
                      CustomTextStyle.titleStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Material(
                elevation: 0.0,
                color: AppColor.shadeTertiaryColor50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        color: AppColor.shadeTertiaryColor150)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: _formKeySIP,
                    child: Column(
                      children: [
                        buildOutlinedTextField(
                            controller: sipAmountController,
                            label: "Monthly Investment",
                            hint: "Enter amount"),
                        const SizedBox(height: 10),
                        buildOutlinedTextField(
                            controller: sipRateController,
                            label: "Expected Interest Rate (%)",
                            hint: "Enter interest rate"),
                        const SizedBox(height: 10),
                        buildOutlinedTextField(
                            controller: sipTenureController,
                            label: "Investment Duration (Years)",
                            hint: "Enter tenure"),
                        const SizedBox(height: 20),
                        CustomElevatedButton(
                            onPressed: calculateSIP,
                            name: "Calculate SIP",
                            width: 180),
                        const SizedBox(height: 15),
                        Text("Future Value: ₹${sipResult.toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.secondaryColor)),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              // const Divider(
              //     height: 40, thickness: 5, color: AppColor.primaryColor),
              const SizedBox(height: 15),
              Text("EMI Calculator:",
                  style:
                      CustomTextStyle.titleStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Material(
                elevation: 0.0,
                color: AppColor.shadeTertiaryColor50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        color: AppColor.shadeTertiaryColor150)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: _formKeyEMI,
                    child: Column(
                      children: [
                        buildOutlinedTextField(
                            controller: loanAmountController,
                            label: "Loan Amount",
                            hint: "Enter loan amount"),
                        const SizedBox(height: 10),
                        buildOutlinedTextField(
                            controller: loanRateController,
                            label: "Annual Interest Rate (%)",
                            hint: "Enter interest rate"),
                        const SizedBox(height: 10),
                        buildOutlinedTextField(
                            controller: loanTenureController,
                            label: "Loan Tenure (Years)",
                            hint: "Enter tenure"),
                        const SizedBox(height: 20),
                        CustomElevatedButton(
                            onPressed: calculateEMI,
                            name: "Calculate EMI",
                            width: 180),
                        const SizedBox(height: 15),
                        Text("EMI Amount: ₹${emiResult.toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.secondaryColor)),
                        Text(
                            "Total Interest: ₹${totalInterest.toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.secondaryColor)),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
