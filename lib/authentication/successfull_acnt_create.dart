import 'package:flutter/material.dart';
import 'package:login_app/home_screens/home_screen.dart';

class SuccessfullAcntCreate extends StatefulWidget {
  const SuccessfullAcntCreate({super.key});

  @override
  State<SuccessfullAcntCreate> createState() => _SuccessfullAcntCreateState();
}

class _SuccessfullAcntCreateState extends State<SuccessfullAcntCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Image.asset("assets/images/account_created.jpg"),
            ),
            Text(
              "Your account is successfully created!", 
              style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            ),
            
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text("Congrulation! your account has been successfully created.You now have full access to all features and services available.", textAlign: TextAlign.center,),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity/2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 2, 12, 155),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Continue", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                ),
              ),
            ),
          ),
           
          ],
        ),
      )
    );
  }
}