
import 'package:flutter/material.dart';

 class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   //  throw UnimplementedError();
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return   Container(height: 100 ,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ) ;
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 15,);
              },
            ),
          ),


        ],
      ),
    );
  }
   
 }