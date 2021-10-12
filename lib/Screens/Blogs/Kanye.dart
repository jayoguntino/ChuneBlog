import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/Screens/Blogs/Dave/Dave.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';

class Kanye extends StatefulWidget {
  @override
  _Kanye createState() => _Kanye();
}

class _Kanye extends State<Kanye> {
  //double screenWidth = MediaQuery.of(context).size.width*0.8;

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
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "DONDA",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w900,
                          color: Colors.pink),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Flexible(
                        child: Center(
                          child: SizedBox(
                            width: 500,
                            child: Center(
                              child: Text(
                                '''Kanye West releases his 8th studio album tittled after his late mother''',
                                style: TextStyle(fontFamily: 'Lato'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/Kanye.png',
                // height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 700,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          '''Kanye took his time releasing the album hosting a total of 3 album listening parties and ironically the album was finally released without his permission by his label Universal. Kanye took to Instagram to express his frustration.

Following his last studio album Jesus is King Kanye came back around with his 8th studio album titled ‘DONDA’.

The album is 21 tracks long and has an interesting range of sounds and percussions definitely a step in a different direction production wise from JIK. The album is still very spiritually themed with many references to the man upstairs.

Remote control [Track No.12] illustrates Gods power with a metaphor illustrating how the control of the world’s done via remote control gives me habbo hotel vibes if you know what I mean. Brings a sense of peace if you believe in a higher power right? The next seconds of your life planned out & the secs after that…


Now Mr. West has always been able to hold a note and he uses his voice well throughout the whole album this album really does showcase his vocal range tho it’s like autochune on steroids. *pun unapologetically added* 

Jail [Track 2] is a great example of this. We hope you listen to the albums you listen to off shuffle tho 🤨


Praise God [Track 6] ft Tavis Scott & Baby Keem a duo you may have already heard of on ‘durag activity’ the simple yet catchy lines by all three artists make this track real easy to listen to. Baby keems verse as repetitive as it may be must go off in the speakers of car.

The album also has a romantic feel to it as the fts are not credited on any of the songs so for you hip-hop fans out there it’s an enjoyable experience trying to figure out who all of the artists vocals are there’s a couple spoilers in this blog already however there’s still a few stars on the tape we haven’t mentioned yet that I’m sure will interest you as you listen 


We’d love to hear what you think of the album & what you’re favourite track from the album is? #EmailUs

STREAM NOW:''',

                          style: TextStyle(height: 2),

                          //overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: new Text(
                        'Spotify',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    onTap: () => launch(
                        'https://open.spotify.com/album/340MjPcVdiQRnMigrPybZA?si=w60dLqiPSNGL1TYlojih9w&dl_branch=1'),
                  ),
                  SizedBox(height: 8),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: new Text(
                        'Apple Music',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    onTap: () => launch(
                        'https://music.apple.com/gb/album/donda/1583449420'),
                  ),
                  SizedBox(height: 100)
                ],
              ),
              Text(
                "OTHER BLOGS",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'images/Dave.png',
                      height: 50,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dave()),
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'images/Kanye.png',
                    height: 50,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
