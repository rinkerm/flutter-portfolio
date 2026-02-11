import 'package:flutter/material.dart';
import 'modules/check_in_manager.dart';

final manager = CheckInManager.instance;
void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Checked in CheckIns times."),
              ElevatedButton(onPressed: () {manager.addCheckIns();}, 
                child: const Text("Check In"))
            ],
          )
        ),
      ),
    );
  }
}

