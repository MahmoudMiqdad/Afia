import 'package:flutter/material.dart';

import 'package:flutter_application_1/doctor/features/appointments/PatientDetailPage.dart';

import 'package:flutter_application_1/widget/CustomAppbarHomepage.dart';
import 'package:flutter_application_1/widget/CustomDrawer.dart';


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
      drawer: const Custom_Drawer(),
      body: Column(
        children: [
          CustomAppbarHomepage(scaffoldstate: scaffoldstate),
          Expanded(
            child: ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(patients[index]['reportImage']),
                    ),
                    title: Text(
                      '${patients[index]['name']} (${patients[index]['age']})',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          'Location: ${patients[index]['location']}',
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Description: ${patients[index]['description']}',
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
