
import 'package:flutter/material.dart';

 class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   //  throw UnimplementedError();
    return Scaffold(
      body:
      Column(
        children: [
          Center(
            child: Center(
              child: Column(
                children: [

                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return   Container(
                      //    height: 60 ,
                          height: MediaQuery.of(context).size.height / 5 - 20 ,
                          width: MediaQuery.of(context).size.width / 5 - 20 ,
                          // 5 jon nise 100 padding 1 jon nise 20 kore
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
            ),
          ),
          Row(
            children: [
              Container(
                height: 60 ,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60 ,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60 ,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60 ,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 60 ,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),


            ],
          ),
          // 3* 6 = 18 + 20 = 38 / 3 = 13
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 6,
                  children: [
                     Container(
                        height: 150 ,
                       width: MediaQuery.of(context).size.width / 3 - 13 ,
                       decoration: BoxDecoration(
                         color: Colors.green,
                          borderRadius: BorderRadius.circular(20),

                       ),
                     ),
                     Container(
                        height: 140,
                       width: MediaQuery.of(context).size.width / 3 - 13 ,
                       decoration: BoxDecoration(
                         color: Colors.green,
                          borderRadius: BorderRadius.circular(20),

                       ),
                     ),
                     Container(
                        height: 140,
                       width: MediaQuery.of(context).size.width / 3 - 13 ,
                       decoration: BoxDecoration(
                         color: Colors.green,
                          borderRadius: BorderRadius.circular(20),

                       ),
                     ),
                     Container(
                        height: 140,
                       width: MediaQuery.of(context).size.width / 3 - 13 ,
                       decoration: BoxDecoration(
                         color: Colors.green,
                          borderRadius: BorderRadius.circular(20),

                       ),
                     ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
   
 }