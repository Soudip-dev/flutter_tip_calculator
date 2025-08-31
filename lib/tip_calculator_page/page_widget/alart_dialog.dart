import 'package:flutter/material.dart';


class AlartDialog extends StatelessWidget {
  const AlartDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: AppColors.primaryColor,width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: AlertDialog(
      // shape: Border.all(color: AppColors.primaryColor,width: 1),
      // elevation: 5,
      // backgroundColor: Colors.white,
      title: Text("Custom Tip"),
      actions: [
        
      Container(
      
                
                width: MediaQuery.of(context).size.width * 0.8,
                height: 120,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Enter",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                    Text("your Tip",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
                  ],),
                  Container(
                   decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
      
                   ),
                   padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("₹",style: TextStyle(fontFamily: 'PANICKO',fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Container(height: double.maxFinite,width: (MediaQuery.of(context).size.width * 0.8) *0.4,
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
              ,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel")),
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Submit")),
      ],)
      ],
         ),
    );
  }
}


 openDialog(BuildContext context){
 showDialog(context: context, builder: (context) {
   return AlartDialog();
 },);
 }

