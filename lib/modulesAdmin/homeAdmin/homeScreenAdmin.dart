import 'package:flutter/material.dart';
import '../session/insertsession.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Container(
            color: Colors.grey[300],
            height: 4,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: () {
                setState() {}
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_view_month),
              title: Text("session"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("programme"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.calendar_view_month),
              title: Text("Setting"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
