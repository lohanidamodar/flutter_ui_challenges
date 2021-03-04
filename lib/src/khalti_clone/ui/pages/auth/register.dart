/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import '../../../res/colors.dart';
import '../../../res/typography.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainBg,
      body: Container(
        margin: const EdgeInsets.fromLTRB(16.0,40.0,16.0,16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.white
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Full Name", style: smallText,),
              _buildTextField(),
              const SizedBox(height: 20.0),
              Text("Mobile Number", style: smallText,),
              _buildTextField(),
              const SizedBox(height: 20.0),
              Text("Email (Optional)", style: smallText,),
              _buildTextField(),
              const SizedBox(height: 20.0),
              Text("Date Type", style: smallText,),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: "AD",
                    value: "AD",
                    onChanged: (value){},
                  ),
                  Text("AD"),
                  Spacer(),
                  Radio(
                    groupValue: "AD",
                    value: "BS",
                    onChanged: (value){},
                  ),
                  Text("BS"),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 10.0),
              Text("Date of Birth (YYYY-MM-DD)", style: smallText,),
              _buildTextField(),
              const SizedBox(height: 20.0),
              Text("Date Type", style: smallText,),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: "Male",
                    value: "Male",
                    onChanged: (value){},
                  ),
                  Text("Male"),
                  Spacer(),
                  Radio(
                    groupValue: "Male",
                    value: "Female",
                    onChanged: (value){},
                  ),
                  Text("Female"),
                  Spacer(),
                  Radio(
                    groupValue: "Male",
                    value: "Other",
                    onChanged: (value){},
                  ),
                  Text("Other"),
                  Spacer(),
                  
                ],
              ),
              const SizedBox(height: 10.0),

              Text("Password", style: smallText,),
              _buildTextField(obscureText: true),
              const SizedBox(height: 20.0),
              Text("Confirm Password", style: smallText,),
              _buildTextField(obscureText: true),
              const SizedBox(height: 20.0),
              Text("By signing up you agree to the Terms & Conditions", style: smallText,),
              const SizedBox(height: 10.0),
              SizedBox(
                width:double.infinity,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text("Sign Up".toUpperCase()),
                  onPressed: (){},
                )
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Expanded(child: Divider(color: Colors.grey.shade600,)),
                  const SizedBox(width: 10.0),
                  Text("Already have an account?",style: smallText,),
                  const SizedBox(width: 10.0),
                  Expanded(child: Divider(color: Colors.grey.shade600,)),
                ],
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                child: SizedBox(
                  width: double.infinity,
                  child: Text("Login".toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                onTap: ()=>Navigator.pushNamedAndRemoveUntil(context,'login',(Route<dynamic> route) => false),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField({bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
    );
  }
}