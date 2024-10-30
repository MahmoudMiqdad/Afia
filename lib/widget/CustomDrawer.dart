
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(

      width: 270,
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
          
          accountName: Text("MAHMOUD"),
          accountEmail: Text("MAHMOUD@gmile.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png',),
          ),
          decoration: BoxDecoration(
            color:Appcolor.appBar,
          ),
                        ),
         
        
      
          ListTile(
            leading: Icon(Icons.person),
            title: Text('الملف الشخصي'),
            onTap: () {
          
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('تسجيل الخروج'),
            onTap: () {
              // ضع هنا كود تسجيل الخروج
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
