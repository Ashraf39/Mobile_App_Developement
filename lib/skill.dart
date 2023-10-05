import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Image(image: AssetImage('images/skills.jpg'),width: 350, height: 400),
              SizedBox(height: 20.0),
              Text(
                'Skills : ',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                "1. Typing\n2. App Development\n3. Video Editing\n4. Image Editing\n5. Coding",
                style: TextStyle(fontSize:20),)
          ],
          ),
        ),
      ),
    );
  }
}

