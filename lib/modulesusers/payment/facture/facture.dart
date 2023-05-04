import 'package:flutter/material.dart';

class FacturePage extends StatefulWidget {
  const FacturePage({Key? key}) : super(key: key);

  @override
  _FacturePageState createState() => _FacturePageState();
}

class _FacturePageState extends State<FacturePage> {
  late String _nom;
  late String _prenom;
  late bool _isAuteur = false;
  late bool _isInvite = false;
  late bool _isParticipant = false;
  late int _numberOfRooms = 0;
  late int _numberOfAccompanat = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Facture",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nom",
                  ),
                  onChanged: (value) {
                    _nom = value;
                  },
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Prénom",
                  ),
                  onChanged: (value) {
                    _prenom = value;
                  },
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Text("Auteur"),
                    Switch(
                      value: _isAuteur,
                      onChanged: (value) {
                        setState(() {
                          _isAuteur = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Invité"),
                    Switch(
                      value: _isInvite,
                      onChanged: (value) {
                        setState(() {
                          _isInvite = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Participant"),
                    Switch(
                      value: _isParticipant,
                      onChanged: (value) {
                        setState(() {
                          _isParticipant = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nombre de chambres",
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    _numberOfRooms = int.tryParse(value) ?? 0;
                  },
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nombre d'accompagnants",
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    _numberOfAccompanat = int.tryParse(value) ?? 0;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
