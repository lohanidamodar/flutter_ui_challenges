/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import '../../../res/colors.dart';
import '../../../res/typography.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBg,
      body: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0), color: Colors.white),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Full Name",
                style: smallText,
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                "Mobile Number",
                style: smallText,
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                "Email (Optional)",
                style: smallText,
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                "Date Type",
                style: smallText,
              ),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: "AD",
                    value: "AD",
                    onChanged: (value) {},
                  ),
                  const Text("AD"),
                  const Spacer(),
                  Radio(
                    groupValue: "AD",
                    value: "BS",
                    onChanged: (value) {},
                  ),
                  const Text("BS"),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Date of Birth (YYYY-MM-DD)",
                style: smallText,
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                "Date Type",
                style: smallText,
              ),
              Row(
                children: <Widget>[
                  Radio(
                    groupValue: "Male",
                    value: "Male",
                    onChanged: (value) {},
                  ),
                  const Text("Male"),
                  const Spacer(),
                  Radio(
                    groupValue: "Male",
                    value: "Female",
                    onChanged: (value) {},
                  ),
                  const Text("Female"),
                  const Spacer(),
                  Radio(
                    groupValue: "Male",
                    value: "Other",
                    onChanged: (value) {},
                  ),
                  const Text("Other"),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Password",
                style: smallText,
              ),
              _buildTextField(obscureText: true),
              const SizedBox(height: 20.0),
              const Text(
                "Confirm Password",
                style: smallText,
              ),
              _buildTextField(obscureText: true),
              const SizedBox(height: 20.0),
              const Text(
                "By signing up you agree to the Terms & Conditions",
                style: smallText,
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Sign Up".toUpperCase()),
                    onPressed: () {},
                  )),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(
                    color: Colors.grey.shade600,
                  )),
                  const SizedBox(width: 10.0),
                  const Text(
                    "Already have an account?",
                    style: smallText,
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                      child: Divider(
                    color: Colors.grey.shade600,
                  )),
                ],
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Login".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, 'login', (Route<dynamic> route) => false),
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
