import 'package:flutter/material.dart';
import 'package:my_sample_app/pages/dashboard.dart';


class LauncherPage extends StatelessWidget  {
  const LauncherPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body:  Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            color: Colors.amber[600],
             width: 108.0,
            height: 48.0,
            child: MaterialButton(
                      elevation: 0,
                      color: Colors.black,
                      onPressed: () {
                        _gotoDetailsPage(context);
                        
                      },
                      height: 55,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Text(
                          'Click Me',
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

 void _gotoDetailsPage(BuildContext context) {
   Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DashboardPage(),
    ),
  );
 }


