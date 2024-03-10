import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});


  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image1.jpg'),
                // Replace with actual image
                radius: 50,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text(
                    "Le Thanh Linh",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "lethanhlinh@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.person, color: Colors.greenAccent,),
              title: Text("My Account"),
              subtitle: Text("Changes to your account details"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.greenAccent),
              title: Text("Saved Contact"),
              subtitle: Text("Manage your saved contact"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.greenAccent),
              title: Text("Face ID / Touch ID"),
              subtitle: Text("Manage your device security"),
              trailing: Icon(Icons.toggle_off_outlined),
            ),
            ListTile(
              leading: Icon(Icons.security, color: Colors.greenAccent),
              title: Text("Two-Factor Authentication"),
              subtitle: Text("Further secure your account for safety"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.greenAccent),
              title: Text("Log out"),
              subtitle: Text("Log out for account safety"),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: "Home",),
          BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.black,), label: "Call"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history, color: Colors.black,),
              label: "History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.greenAccent),
              label: "Profile"),

        ],
        showUnselectedLabels: true,
      ),
    );
  }
}
