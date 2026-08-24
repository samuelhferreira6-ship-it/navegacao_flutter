import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333333),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Icons.school,
              size: 80,
              color: Color(0xFF1D1D00),
            ),

            SizedBox(height: 20),

            Text(
              'Bem-vindo ao Sistema',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1D1D1D),
                foregroundColor: Colors.white,
              ),

              child: Text('ENTRAR'),
            ),
          ],
        ),
      ),
    );
  }
}