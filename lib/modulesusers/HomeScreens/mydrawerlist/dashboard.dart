import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConferenceDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: <Widget>[
          DashboardItem(
            title: 'View Sessions',
            icon: Icons.event_note,
            onTap: () {
              // TODO: Navigate to session list screen
            },
          ),
          DashboardItem(
            title: 'View Speakers',
            icon: Icons.person,
            onTap: () {
              // TODO: Navigate to speaker list screen
            },
          ),
          DashboardItem(
            title: 'View Attendees',
            icon: Icons.people,
            onTap: () {
              // TODO: Navigate to attendee list screen
            },
          ),
          DashboardItem(
            title: 'View Sponsors',
            icon: Icons.star,
            onTap: () {
              // TODO: Navigate to sponsor list screen
            },
          ),
        ],
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  DashboardItem({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 64,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
