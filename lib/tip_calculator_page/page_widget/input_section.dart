import 'package:flutter/material.dart';
import 'package:tip_calculator/tip_calculator_page/page_widget/alart_dialog.dart';
import 'package:tip_calculator/utils/app_colors.dart';

class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  
          Column(
            children: [

              textfield_section(context),
               SizedBox(height: 35,),
               percenttip_section(context),
               SizedBox(height: 40,),
               
    Container(

              // color: Colors.amber,
              width: MediaQuery.of(context).size.width * 0.8,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Split",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                  Text("the total",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
                ],),
                Container(
                   width: (MediaQuery.of(context).size.width * 0.8) *0.70,
                   height: 85,
                 decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  
                  borderRadius: BorderRadius.circular(10),

                 ),
                 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                      
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                      ),
                      width: ((MediaQuery.of(context).size.width * 0.8) *0.70)*0.35,
                      height: double.maxFinite,
                      child :Center(child: Text("-",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35)),),
                    ),
                    Text("22",style: TextStyle(color: Colors.black,fontFamily: 'PANICKO',fontWeight: FontWeight.bold,fontSize: 40),),
                    Container(
                       decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                      ),
                      width: ((MediaQuery.of(context).size.width * 0.8) *0.70)*0.35,
                      height: double.maxFinite,
                      child :Center(child: Text("+",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35)),),
                    ),
                  ],)
                )
              ],)
            ,)

            ],
          )
       ;
  }

  SizedBox percenttip_section(BuildContext context) {
    return SizedBox(

              // color: Colors.amber,
              width: MediaQuery.of(context).size.width * 0.8,
              // height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Enter",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                  Text("your bill",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
                ],),
                Column(
                  children: [
                    SizedBox(
                      width:  (MediaQuery.of(context).size.width * 0.8) *0.7,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      fixed_tip_section(parcentTip: "10%"),
                      fixed_tip_section(parcentTip: "15%"),
                      fixed_tip_section(parcentTip: "20%"),
                      
                     
                      
                    ],),),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        openDialog(context);
                      },
                      child: Container(decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                      ),height: 50,width:(MediaQuery.of(context).size.width * 0.8) *0.7,
                      child: Center(child: Text("Custom Tip",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                      ),
                    )
                  ],
                )
              ],)
            ,);
  }

  Container textfield_section(BuildContext context) {
    return 

    Container(

              // color: Colors.amber,
              width: MediaQuery.of(context).size.width * 0.8,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Enter",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                  Text("your bill",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
                ],),
                Container(
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                 ),
                 padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text("₹",style: TextStyle(fontFamily: 'PANICKO',fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Container(height: double.maxFinite,width: (MediaQuery.of(context).size.width * 0.8) *0.55,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    )
                  ],)
                )
              ],)
            ,);
 
  }

    Container fixed_tip_section({required String parcentTip}) => Container(
    height: 50,width: 75,
    decoration: BoxDecoration( color: AppColors.primaryColor,borderRadius: BorderRadius.circular(10)),
    child: Center(child: Text(parcentTip,
    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
    ),),
    );

}