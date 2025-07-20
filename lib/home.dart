import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Sample LogIn Page", 
        style: GoogleFonts.merriweather(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),

      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical centering
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal centering
          children: [
            Text(
              "Enter Your Phone Number and Password for LogIn",
              style: GoogleFonts.merriweather(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                  hintStyle: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 14,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintStyle: TextStyle(color: Colors.indigoAccent, fontSize: 14),
                labelStyle: TextStyle(color: Colors.indigoAccent, fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                if (phoneController.text.isEmpty || passwordController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("No field can not be empty"))
                  );
                } else if (phoneController.text.length != 11 || passwordController.text.length <= 8) {
                  if(phoneController.text.length != 11){
                    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You must Enter 11 digits as Phone Number"))
                  );
                  }
                  else if(passwordController.text.length <= 8){
                    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You must Enter at least 8 digits as Password"))
                  );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Log In Successful :D"))
                  );
                }
              },
              child: Text('Submit', style: GoogleFonts.merriweather(color: Colors.white)),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
