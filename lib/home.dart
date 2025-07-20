import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample LogIn Page"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),

      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical centering
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal centering
          children: [
            Text("Enter Your Phone Number and Password for LogIn", 
            style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.indigo),),
            SizedBox(
            height: 25,
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
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
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
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
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: (){},
            child: Text('Submit', style: TextStyle(color: Colors.black),), 
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
