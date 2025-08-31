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
  TextEditingController billController=TextEditingController();
  TextEditingController coustomPercentController=TextEditingController();
  String totalBill="";
  String totalTip="";
  double percentGiven = 0.0;
  String customValue = "";
  String perHeadTip = "";
  int count = 0;
  // ---------------------------------------------------------
  void perHeadTipCalculation({required int noPerson}){
    double toBil = double.parse(totalBill);
    print("int Bill: $toBil");
    print("totalTip: $totalTip");
    double toTip = double.parse(totalTip);
    print("int Tip: $toTip");
    // print("noPerson from call : $noPerson");
    
    perHeadTip = ((toTip + toBil) / noPerson).toStringAsFixed(2);
    
    
  }

void tipCalculation(){
  int toBil = int.parse(totalBill);
  print("int Bill: $toBil");
  totalTip = (toBil*(percentGiven / 100)).toString();
  print("tip: $totalTip");
}

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
            DisplayBillDetails(totalBill: totalBill ,totalTip: totalTip,perHdTip:perHeadTip ,),
            specer(40),
            InputSection(
              onMinusDecrement: () {
               count <= 1 ? count = 1 :
                count--;
                print("count: $count");
                // perHeadTipCalculation(noPerson: count);
                perHeadTipCalculation(noPerson: count);
                print("perHeadTip: $perHeadTip");
                setState(() {
                  
                });
                
              },
              onPlusIncrement: () {
               count++;
                print("count: $count");
                perHeadTipCalculation(noPerson: count);
                print("perHeadTip: $perHeadTip");
                setState(() {
                  
                });
              },
              noPerson: count,
              coustomPercentController: coustomPercentController,
              onChangedd: (value){
               customValue =value;
                setState(() {
                  percentGiven = double.parse(customValue);
                });
                tipCalculation();
               print(customValue);
               
              },
              tenPercent: "10%",
              fifteenPercent: "15%",
              twentyPercent: "20%",

              onTapFifteen: () {
                setState(() {
                  percentGiven = 15;
                });
                tipCalculation();
              },
              onTapTwenty: () {
                setState(() {
                  percentGiven = 20;
                });
                tipCalculation();
              },
              onTapTen: () {
                setState(() {
                  percentGiven = 10;
                });
                tipCalculation();
              },
              // onTapCustom: () {
               
              // },
              

              billController: billController ,
              onChanged: (value) {
                setState(() {
                  totalBill=value;
                });
                print(value);
              },
            )
           
          ],),
        ),
      ),

    );
  }

Widget specer([double height=20])=>SizedBox(height: height,);

  
}