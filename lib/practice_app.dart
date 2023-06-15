import 'package:flutter/material.dart';
import 'package:practice_project/screens/company_selection_screen.dart';

class PracticeApp extends StatelessWidget {
  const PracticeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CompanySelectionScreen(),
    );
  }
}
