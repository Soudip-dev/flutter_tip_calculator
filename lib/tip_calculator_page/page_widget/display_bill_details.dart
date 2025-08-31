import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/app_colors.dart';

class DisplayBillDetails extends StatelessWidget {
  const DisplayBillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey,
                width: 0.3
              ),
              boxShadow: [BoxShadow(blurRadius: 10,color: Colors.grey.shade300)],
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text("Total p/person",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),
                      SizedBox(height: 12,),
                      RichText(text: TextSpan(children: [
                        TextSpan(text: "₹",style: TextStyle(fontFamily: 'PANICKO',fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold)),
                        TextSpan(text: '0000',style: TextStyle(fontFamily: 'PANICKO',fontSize: 50,color: Colors.black))
                      ]))
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    bill_section(title: "Total Bill"),
                    bill_section(title: "Total Tip"),
                  
                  ],),
                )
              ],
            ),
          )
       ;
  }


  Column bill_section({required String title}) {
    return Column(
                  children: [
                    Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),
                    SizedBox(height: 8,),
                    RichText(text: TextSpan(children: [
                      TextSpan(text: "₹",style: TextStyle(fontFamily: 'PANICKO',fontSize: 25,color: AppColors.primaryColor,fontWeight: FontWeight.bold)),
                      TextSpan(text: '0000',style: TextStyle(fontFamily: 'PANICKO',fontSize: 35,color: AppColors.primaryColor))
                    ]))
                  ],
                );
  }


}