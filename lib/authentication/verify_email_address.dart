import 'package:flutter/material.dart';
import 'package:login_app/authentication/successfull_acnt_create.dart';

class VerifyEmailAddress extends StatefulWidget {
  const VerifyEmailAddress({super.key});

  @override
  State<VerifyEmailAddress> createState() => _VerifyEmailAddressState();
}

class _VerifyEmailAddressState extends State<VerifyEmailAddress> {
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
              child: Image.asset("assets/images/verify email.jpg"),
            ),
            Text(
              "Verify you email address!", 
              style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            ),
            Text(
              "gillzaib021@gmail.com",
            textAlign: TextAlign.center,  
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text("Verifying you email helps us conform that you own the address that allow you to access all features securely.Verifying your email also helps us protect your account and ensure important updates reach you. ", textAlign: TextAlign.center,),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessfullAcntCreate()));
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
           TextButton(onPressed: (){}, child: Text("Resend Email"))
          ],
        ),
      )
    );
  }
}