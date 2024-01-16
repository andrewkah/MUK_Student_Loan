import 'package:flutter/material.dart';
import 'package:mak_scholar1/widgets/custom_appbar.dart';
import 'package:mak_scholar1/widgets/row_text_fields.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const CustomAppBar( title: "TRANSACTIONS", ),
    body: SafeArea(
      child: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical:3.0, horizontal: 6.0),
            child: ListTile(
              title: Text(
                "Deposit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Aug 5 at 4:34 PM",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  RowTextFields(
                      titleText: "Carrier: ",
                      subTitleText: "Stanbic",
                      textSize: 18,)
                ],
              ),
              trailing: Text(
                "+UGX 900,000",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 147, 71),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 3,
            endIndent: 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric( horizontal: 6.0, vertical:3.0),
            child: ListTile(
              title: Text(
                "Partial Payment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Aug 5 at 5:20 PM",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  RowTextFields(
                      titleText: "Carrier: ",
                      subTitleText: "NULL",
                      textSize: 18,)
                ],
              ),
              trailing: Text(
                "-UGX 900,000",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 3,
            endIndent: 3,
          ),
        ],
      ),
    ),
  );

}
