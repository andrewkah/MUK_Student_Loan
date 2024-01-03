import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/authentication_files/authentication_repository.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool balanceSwitch = false;
  bool fingerprintSwitch = false;

  @override
  Widget build(BuildContext context) =>  Scaffold(
    appBar: CustomAppBar( title: "SETTINGS",),
    body: SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
            child: ListTile(
              title: const Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                iconSize: 25,
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 3,
            endIndent: 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: ListTile(
              title: const Text(
                "Privacy & Settings",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hide Balance",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Hide your balance on the Home screen",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Switch(
                  value: balanceSwitch,
                  activeColor: const Color.fromARGB(255, 0, 147, 71),
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      balanceSwitch = value;
                    });
                  }),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 3,
            endIndent: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: ListTile(
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enable fingerprint",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Hide your balance on the Home screen",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Switch(
                  value: fingerprintSwitch,
                  activeColor: const Color.fromARGB(255, 0, 147, 71),
                  onChanged: (bool value) {
                    setState(() {
                      fingerprintSwitch = value;
                    });
                  }),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 3,
            endIndent: 3,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: ListTile(
              title: Text(
                "Other",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "FAQs",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 3,
            endIndent: 3,
          ),
          const SizedBox(height: 150,),
          // const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Authenticator.instance.logout();
                },
                child: const Text(
                  "SIGN OUT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

}
