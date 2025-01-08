import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _languageSelection = false;
  bool _disabledPeople = false;
  bool _colorInversion = false;
  bool _displayOrder = false;
  bool _moreOptions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SwitchListTile(
              title: Text('Language Selection'),
              value: _languageSelection,
              onChanged: (bool value) {
                setState(() {
                  _languageSelection = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Disabled People'),
              value: _disabledPeople,
              onChanged: (bool value) {
                setState(() {
                  _disabledPeople = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Color Inversion'),
              value: _colorInversion,
              onChanged: (bool value) {
                setState(() {
                  _colorInversion = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Display Order'),
              value: _displayOrder,
              onChanged: (bool value) {
                setState(() {
                  _displayOrder = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('More Options'),
              value: _moreOptions,
              onChanged: (bool value) {
                setState(() {
                  _moreOptions = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
