import 'package:flutter/material.dart';
import 'package:login_app/authentication/verify_email_address.dart';

class ResetEmailPassword extends StatefulWidget {
  const ResetEmailPassword({super.key});

  @override
  State<ResetEmailPassword> createState() => _ResetEmailPasswordState();
}

class _ResetEmailPasswordState extends State<ResetEmailPassword> {
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
              child: Image.asset("assets/images/password_reset.png"),
            ),
            Text(
              "Password Reset Email Sent", 
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
            child: Text("we've sent you an email with instruction to reset you password. If you don't see it soon, check your spam or junk folder.", textAlign: TextAlign.center,),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyEmailAddress()));
              },
              child: Container(
                height: 50,
                width: double.infinity/2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 2, 12, 155),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Done", style: TextStyle(
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