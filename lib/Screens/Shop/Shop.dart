import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _Shop createState() => _Shop();
}

class _Shop extends State<Shop> {
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
              Image.asset(
                'images/Logo.png',
                height: 50,
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
            child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Container(
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/1.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          'Coming soon',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  SizedBox(width: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/2.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  SizedBox(width: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/3.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/4.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  SizedBox(width: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/5.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  SizedBox(width: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/6.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/7.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  SizedBox(width: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/8.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  SizedBox(width: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/9.png',
                          height: 300,
                        ),
                        SizedBox(height: 20),
                        Text('CHUNE Logo embroided t-shirt'),
                        SizedBox(height: 20),
                        Text(
                          '£32',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                ],
              ),
            ]),
          ),
        )),
      ),
      bottomNavigationBar: Container(
        color: Colors.pink.withOpacity(0.8),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Row(
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                    controller: firstName,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        hintText: ' First Name',
                        hintStyle: TextStyle(
                          color: Colors.white, // <-- Change this
                          fontSize: null,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                    onChanged: (text) {
                      _printLatestValue();
                    }),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 300,
                child: TextField(
                    controller: email,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        hintText: ' Email',
                        hintStyle: TextStyle(
                          color: Colors.white, // <-- Change this
                          fontSize: null,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                    onChanged: (text) {
                      _printLatestValue();
                    }),
              ),
              SizedBox(width: 20),
              Container(
                color: Colors.white.withOpacity(0.3),
                width: 250,
                height: 70,
                child: Center(
                  child: Text(
                    'JOIN MAILING LIST',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
