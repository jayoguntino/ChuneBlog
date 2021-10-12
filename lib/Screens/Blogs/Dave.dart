import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/Screens/Blogs/Kanye.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';

class Dave extends StatefulWidget {
  @override
  _Dave createState() => _Dave();
}

class _Dave extends State<Dave> {
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
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "WE’RE ALL ALONE \nIN THIS TOGETHER",
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w900,
                        color: Colors.pink),
                  ),
                  SizedBox(height: 8),
                  Text('''Streatham's very own releases his 2nd studio album''')
                ],
              ),
              SizedBox(height: 80),
              Image.asset(
                'images/Dave.png',
                // height: 50,
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  SizedBox(
                    width: 500,
                    child: Text(
                      '''Now @ first glance you may have thought that this album title was referencing the HSM classic you know Troy Gabriel & them man there and we wouldn’t have blamed you either


You would however have been wrong this is the titled album for Dave second studio album. Dave born and raised in Streatham, London has paved waves for himself over the last few years most notably after his first studio album Psychodrama. 


Chances are you’ve been drawn to Dave because of his witty punchlines, his clarity and his storytelling. If that’s the case then you’re in luck because this album is packed will all that good stuff. 


It’s clear to see [hear] Dave maturity touching upon interesting and important topics including politics, governments misuse/mistreatment of the people in Nigeria along with the crud your probably don’t want your pastor catching you listening to 


The albums lead single Clash has drawn up some conversations around whether or not Dave provided a platform for Stormzy to send for chipmunk as there ongoing saga continues. Dave also provided a warning to any prospective MCs that want to war him on Verdansk ‘[Enter quote here]’


As a whole it’s a strong project meets the standard Dave has set form self and through conversations with producers he has worked with he sounds very meticulous. The best track on the album is with a doubt ‘In the fire’ Disagree Yes? (Email us why) the track includes features from Fredo, Meeks, Ghetts & Giggs. The track accompanied by an American gospel backing vocal is super easy to listen to.


Other tracks to note are Lazarus ft Boj and System ft Wizkid and Twenty to One which if you start listening to the album at 12:00 the song playing at 12:40 is? Yes you guessed it!


What did you think of the album? #EmailUs 


Stream the album here:
''',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: new Text(
                        'Spotify',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    onTap: () => launch(
                        'https://open.spotify.com/album/6HwzIlrCDq3WF9vMq8meqG?si=nSXUQ2l3Ta29zNnR_ZNTmA&dl_branch=1'),
                  ),
                  SizedBox(height: 8),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: new Text(
                        'Apple Music',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                    ),
                    onTap: () => launch(
                        'https://music.apple.com/us/album/were-all-alone-in-this-together/1575534808'),
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
                  Image.asset(
                    'images/Dave.png',
                    height: 50,
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    child: Image.asset(
                      'images/Kanye.png',
                      height: 50,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kanye()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
