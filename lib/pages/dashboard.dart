import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget  {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Dashboard',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            color: Colors.amber[600],
            width: 108.0,
            height: 48.0,
            child: MaterialButton(
              elevation: 0,
              color: Colors.black,
              onPressed: () {
                goBack(context);
              },
              height: 55,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void goBack(BuildContext context) {
  Navigator.pop(
    context
    );
}


