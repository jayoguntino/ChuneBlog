import 'package:flutter/material.dart';
import 'package:website/Screens/Blogs/Dave/Dave.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';

class Tablet extends StatefulWidget {
  @override
  _Tablet createState() => _Tablet();
}

class _Tablet extends State<Tablet> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  bool active = false;

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    firstName.addListener(_printLatestValue);
    email.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    firstName.dispose();
    email.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    if (firstName.text.length > 0 && email.text.length > 0) {
      setState(() {
        active = true;
      });
    }

    if (firstName.text.length == 0 || email.text.length == 0) {
      setState(() {
        active = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Image.asset(
                  'images/Logo.png',
                  height: 50,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Layout()),
                  );
                },
              ),
              SizedBox(width: 40),
              GestureDetector(
                child: Text(
                  'SHOP',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shop()),
                  );
                },
              ),
            ],
          ),
        ),
        toolbarHeight: 70,
        elevation: 2,
        shadowColor: Colors.grey.shade100,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/Text.png',
                      height: 200,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Send & share music to anyone instantly',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      width: 300,
                      child: TextField(
                          controller: firstName,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.3),
                                      width: 1.0)),
                              labelText: ' First name'),
                          onChanged: (text) {
                            _printLatestValue();
                          }),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.3),
                                      width: 1.0)),
                              labelText: ' Email'),
                          onChanged: (text) {
                            _printLatestValue();
                          }),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        GestureDetector(
                            child: Container(
                              color: active
                                  ? Colors.pink
                                  : Colors.grey.withOpacity(0.3),
                              width: 170,
                              height: 70,
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontSize: active ? 30 : 25,
                                      fontWeight: active
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color:
                                          active ? Colors.white : Colors.black),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Dave()),
                              );
                            }),
                        SizedBox(width: 20),
                        Image.asset(
                          'images/apple.jpeg',
                          height: 50,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          'images/playstore.png',
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/chunescreen.png',
             
              ),
            ],
          ),
        ),
      ),
    );
  }
}
