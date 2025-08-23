

import 'package:flutter/material.dart';
import 'package:shpoy_app/data/app_text_style.dart';
import 'package:shpoy_app/widgets/customer_text_feild.dart';

class Loginpage extends  StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final TextEditingController emailcontroller = TextEditingController();

    final TextEditingController passwordController = TextEditingController();
   return Scaffold(
       body : Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Center(
           child: Column(
              children: [
                 SizedBox(height: 100 ,) ,
                Text("Cholo kini", style:  AppTextstyle.textStyle22orrageW300,) ,
                SizedBox(height:
                MediaQuery.of(context).size.height * 0.3
                  ,),

               /*
                TextFormField(
                  controller: emailcontroller,
                  style: TextStyle(
                    fontSize: 18 ,
                    color: Colors.redAccent,
                  ),
                  decoration:
                  InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                    ),

                    fillColor: Colors.blue[50],
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                     labelText: "Email",
                    enabledBorder:
                      OutlineInputBorder(

                      ),
                    focusedBorder: OutlineInputBorder(

                    ),

                  ),
                ),

                  SizedBox(height: 50,),
                TextFormField(
                  controller: emailcontroller,
                  style: TextStyle(
                    fontSize: 18 ,
                    color: Colors.redAccent,
                  ),
                  decoration:
                  InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                    ),

                    fillColor: Colors.blue[50],
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                     labelText: "Email",
                    enabledBorder:
                      OutlineInputBorder(

                      ),
                    focusedBorder: OutlineInputBorder(

                    ),

                  ),
                ),
                SizedBox(height: 50,),
                TextFormField(
                  controller: emailcontroller,
                  style: TextStyle(
                    fontSize: 18 ,
                    color: Colors.redAccent,
                  ),
                  decoration:
                  InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                    ),

                    fillColor: Colors.blue[50],
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                     labelText: "Email",
                    enabledBorder:
                      OutlineInputBorder(

                      ),
                    focusedBorder: OutlineInputBorder(

                    ),

                  ),
                ),
                 */
                CustomerTextFeild(
                    controller: emailcontroller,
                  hintText: "Enter Email",
                  prefixWidget: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 20,),
                CustomerTextFeild(
                  controller: passwordController,
                  hintText: "Enter Password",
                  prefixWidget: Icon(Icons.lock_outline),
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    // AlertDialog(
                    //   title: Text("Going to "),
                    // );
                    _showAlertDialog(context);
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                      child: Text("Forget Password ?", style: TextStyle(color: Colors.red),)),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    if(emailcontroller.text.toString() == "saminn" && passwordController.text.toString() == "12345")
                      {
                        return debugPrint("Login Successfully");
                      }
                    else {
                      return debugPrint("Login Failed");
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: Colors.lime,
                  
                     ),
                    child: Center(
                      child: Text("Login",
                        style: TextStyle(
                          color: Colors.white
                        ,
                          fontSize: 18 ,
                        )
                  
                        ,),
                  
                    ),
                  
                  ),
                ),
                



              ],
           ),
         ),
       )
   );
  }

}

void _showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Going to"),
        content: Text("This is your custom alert dialog."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Dismiss the dialog
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              // You can add your custom logic here
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}
