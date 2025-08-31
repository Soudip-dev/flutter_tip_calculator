import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          
          width: 280,
          child: Stack(
            
            children: [
            Image.asset("assets/icons/chef_hat.png",height: 150,width: 150,),
            
            Positioned(
              // right: 30,
              left: 125,
              top: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(text: TextSpan(children: [
                  TextSpan(text: "Mr",style: TextStyle(fontFamily: "Oups", fontSize: 20,color: Colors.black)),
                  TextSpan(text: "TIP",style: TextStyle(fontFamily: "Oups", fontSize: 50,color: Colors.black)),
                ]),),
                
                Text("Calculator",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.black),)
              ],),
            )
          ],),
        );
  
  }
}