import 'package:flutter/material.dart';
import 'package:marketdo/widgets/text_widget.dart';

class HomeSettings extends StatelessWidget {
  const HomeSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: TextBold(text: 'Settings', fontSize: 18, color: Colors.white),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: TextBold(
                text: 'Sell in MarketDo', fontSize: 16, color: Colors.grey),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          const Divider(),
          ListTile(
            title:
                TextBold(text: 'My Products', fontSize: 16, color: Colors.grey),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          const Divider(),
          ListTile(
            title: TextBold(text: 'About us', fontSize: 16, color: Colors.grey),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text(
                          'Logout Confirmation',
                          style: TextStyle(
                              fontFamily: 'QBold', fontWeight: FontWeight.bold),
                        ),
                        content: const Text(
                          'Are you sure you want to Logout?',
                          style: TextStyle(fontFamily: 'QRegular'),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text(
                              'Close',
                              style: TextStyle(
                                  fontFamily: 'QRegular',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: (context) => LogInPage()));
                            },
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                  fontFamily: 'QRegular',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ));
            },
            title: TextBold(text: 'Logout', fontSize: 16, color: Colors.grey),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
