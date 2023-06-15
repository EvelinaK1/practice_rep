import 'package:flutter/material.dart';
import 'package:practice_project/widgets/navigation_button_widget.dart';

class CompanySelectionScreen extends StatelessWidget {
  const CompanySelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 251, 1),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 40,
                right: 26,
              ),
              child: Icon(
                Icons.clear,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 106,
            ),
            child: Text(
              'Привет,\nВыбери компанию',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 58,
          ),
          NavigationButtonWidget(
            image: 'assets/сушивесла.png',
            text: 'Сушивесла',
          ),
          NavigationButtonWidget(
            image: 'assets/блинбери.png',
            text: 'Блинбери',
          ),
          NavigationButtonWidget(
            image: 'assets/demo.png',
            text: 'Demo',
          ),
          NavigationButtonWidget(
            image: 'assets/test.png',
            text: 'Test',
          ),
        ],
      ),
    );
  }
}
