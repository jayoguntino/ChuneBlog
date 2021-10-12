import 'package:flutter/material.dart';
import 'package:website/Screens/Blogs/Doja.dart';
import 'package:website/Screens/Blogs/NWR.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';

class HomeScreenTablet extends StatefulWidget {
  @override
  _HomeScreenTablet createState() => _HomeScreenTablet();
}

class _HomeScreenTablet extends State<HomeScreenTablet> {
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
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              Image.asset(
                'images/NWR.png',
                height: 200,
              ),
              SizedBox(width: 40),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "EXCLUSIVE interview with NEW WORLD RAY",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''Chune recently sat down with London's own NWR talking about his latest album watch the video NOW''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Container(
                      color: Colors.grey.withOpacity(0.3),
                      width: 170,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Watch VIDEO',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NWR()),
                      );
                    },
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              Image.asset(
                'images/NOT3S.jpeg',
                height: 200,
              ),
              SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Notes creates a real throne challenger '",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''
Where do I begin as I write this letter - Ever since I saw this young ladies Moo video I was hooked.
I new about her works way before then with hits like ‘So High’ & ‘No Police’ still getting played till this day...''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Container(
                      color: Colors.grey.withOpacity(0.3),
                      width: 170,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Read Story',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Doja()),
                      );
                    },
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              Image.asset(
                'images/Drake.jpeg',
                height: 400,
              ),
              SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Drake makes us all 'Certified Lover Boys \nwith CLB'",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''
Where do I begin as I write this letter - Ever since I saw this young ladies Moo video I was hooked.
I new about her works way before then with hits like ‘So High’ & ‘No Police’ still getting played till this day...''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Container(
                      color: Colors.grey.withOpacity(0.3),
                      width: 170,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Read Story',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Doja()),
                      );
                    },
                  ),
                ],
              )
            ]),
          ),
          //SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              Image.asset(
                'images/Doja.png',
                //height: 50,
              ),
              SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Doja Cat releases Planet Her'",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''
Where do I begin as I write this letter - Ever since I saw this young ladies Moo video I was hooked.
I new about her works way before then with hits like ‘So High’ & ‘No Police’ still getting played till this day...''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Container(
                      color: Colors.grey.withOpacity(0.3),
                      width: 170,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Read Story',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Doja()),
                      );
                    },
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              SizedBox(height: 40),
              Image.asset(
                'images/GIG.jpeg',
                //height: 50,
              ),
              SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "OMG is there a surprise EP \nincoming from JAYCHUNE'",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''
Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. \nIt has survived not only five centuries, but also the leap into electronic typesetting, \nremaining essentially unchanged''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Container(
                      color: Colors.grey.withOpacity(0.3),
                      width: 170,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Read Story',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Doja()),
                      );
                    },
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              Image.asset(
                'images/SZA.jpeg',
                //height: 50,
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 40),
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "SZA releases new Track 'Good Days'",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. \nIt has survived not only five centuries, but also the leap into electronic typesetting, \nremaining essentially unchanged''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.grey.withOpacity(0.3),
                    width: 170,
                    height: 70,
                    child: Center(
                      child: Text(
                        'Read Story',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(children: [
              SizedBox(height: 40),
              Image.asset(
                'images/SMH.jpeg',
                height: 300,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "ARTICLE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Filthy Fellas Jordy not Jordan drops 'Cherry B'",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. \nIt has survived not only five centuries, but also the leap into electronic typesetting, \nremaining essentially unchanged''',
                    style: TextStyle(fontFamily: 'Lato', height: 2),
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.grey.withOpacity(0.3),
                    width: 170,
                    height: 70,
                    child: Center(
                      child: Text(
                        'Read Story',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Container(
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'images/Yachty.png',
                                  //height: 100,
                                  width: 300,
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    '''Lil Yachty drops a new project it's wavy innit''',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                    ''',
                                    style: TextStyle(fontSize: 12, height: 2),
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ],
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Container(
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'images/Rich.png',
                                  //height: 100,
                                  width: 300,
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    '''Rody Rich the proof is in the pudding''',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                      ''',
                                    style: TextStyle(fontSize: 12, height: 2),
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ],
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Container(
                                height: 400,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'images/YSL.png',
                                    //height: 100,
                                    width: 300,
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width: 250,
                                    child: Text(
                                      '''YSL Young Thug and his crew link up to make tape of the year''',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width: 250,
                                    child: Text(
                                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.                    
                    ''',
                                      style: TextStyle(fontSize: 12, height: 2),
                                    ),
                                  )
                                ],
                              ),
                            ]),
                          ],
                        ),
                        onTap: () {}),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 20),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        color: Colors.pink.withOpacity(0.8),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Row(
            children: [
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
