import 'package:flutter/material.dart';
import 'package:tip_calculator/tip_calculator_page/page_widget/display_bill_details.dart';
import 'package:tip_calculator/tip_calculator_page/page_widget/header_section.dart';
import 'package:tip_calculator/tip_calculator_page/page_widget/input_section.dart';
import 'package:tip_calculator/utils/app_colors.dart';



class TipCalucatorPage extends StatefulWidget {
  const TipCalucatorPage({super.key});

  @override
  State<TipCalucatorPage> createState() => _TipCalucatorPageState();
}

class _TipCalucatorPageState extends State<TipCalucatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
            HeaderSection(),
            specer(),
            DisplayBillDetails(),
            specer(40),
            InputSection()
           
          ],),
        ),
      ),

    );
  }

Widget specer([double height=20])=>SizedBox(height: height,);

  
}