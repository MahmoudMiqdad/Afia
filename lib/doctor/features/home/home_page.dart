import 'package:flutter/material.dart';


import 'package:flutter_application_1/doctor/features/home/patient_detail_page.dart';

import 'package:flutter_application_1/widget/custom_appbar_homepage.dart';
import 'package:flutter_application_1/widget/custom_drawer.dart';
import 'package:flutter_application_1/widget/custom_patient_card.dart';


class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldstate = GlobalKey();

  final List<Map<String, dynamic>> patients = [
    {
      'name': 'Mahmoud',
      'age': 30,
      'location': 'Damascus',
      'reportImage': 'images/t2.png',
      'description': 'Patient has a mild headache.',
    },
    {
      'name': 'Sarah',
      'age': 25,
      'location': 'Aleppo',
      'reportImage': 'images/t2.png',
      'description': 'Patient is experiencing fatigue.',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldstate,
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          CustomAppbarHomepage(scaffoldstate: scaffoldstate),
         Expanded(
  child: ListView.builder(
    itemCount: patients.length,
    itemBuilder: (context, index) {
      return PatientCard(
        patient: patients[index],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PatientDetailPage(
                patient: patients[index],
              ),
            ),
          );
        },
      );
    },
  ),
),

        ],
      ),
    );
  }
}
