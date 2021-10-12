import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/Screens/Blogs/Dave/Dave.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';

class Doja extends StatefulWidget {
  @override
  _Doja createState() => _Doja();
}

class _Doja extends State<Doja> {
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
                      "PLANET HER",
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
                                '''Doja's latest project is full of surprises''',
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
                'images/Doja.png',
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
                          '''Where do I begin as I write this letter - Ever since I saw this young ladies Moo video I was hooked.
I new about her works way before then with hits like ‘So High’ & ‘No Police’ still getting played till this day. When it comes to rap females are often overlooked & when it comes to MCs just look at the UK’s Lil Simz. Doja shines bright tho as in she’s been steady making waves across genres. Her hit ’Say So’ was No.1 for weeks. It’s fact Doja’s seriously talented and with her third album ‘Planet Her’ we didn’t know what quite to expect.

It’s funny tho the build up to the album won’t be as big as a Kendrick or a Cole which is weird don’t you think? Doja brings in over 61M monthly listeners a month. The Lead single is ‘Kiss Me More’ ft SZA match made in sonic heaven. The music video is super imaginative and trippy. 

Watch here if you haven’t seen it already: https://www.youtube.com/watch?v=0EVVKs6DQLo

Let’s get one thing straight Doja Cat is not really a rapper she’s more of an artist an amazing one too.
It’s easy to see this as you listen to the range of songs and the production styles. 
The album has got tracks for the club, tracks for the charts and tracks for the promiscuous girlfriends out there. For real though it’s a strong project from start to finish with some interesting features:

- Young Thug (PayDay) [photo]
- Ariana Grande (I Don’t Do Drugs) [photo]
- The Weekend (You Right) [photo]
- Options (NSG) trolling it’s Dreamvills JID [photo]
- Kiss Me More (SZA) [photo]

Only thing that was maybe missing from this album was a young Cardi B ft but I guess she’s busy preparing for her next child. Ultimately if you like to categories female rappers then this album is a massive step in pushing the movement forward. As per usual it’s time to pick the best track from the album. It’s tough because there’s some genuine gems here. Even if it’s not traditional rap or Hip-Hop. In saying that tho if you sit on the fence you get splinters so lets do this…

Put the Weekend on a track and you’re guaranteed a slamming hook he’s like an American Wizkid no wonder they’re both call Starboy. So, You Right ft the Weekend & Woman & Love To Dream & Kiss Me More are No.1 contenders. Taking bias into consideration I’ll have to give it to You Right ft the Weekend

What was your favourite CHUNE from the project? #EmailUS

STREAM NOW:

Spotify: https://open.spotify.com/album/1nAQbHeOWTfQzbOoFrvndW?si=Htu9zjMeQ6286KBLrYdS9w&dl_branch=1
Apple Music: https://music.apple.com/us/album/planet-her/1571168930

Till the next one guys - PEACE!


—————————BS about female spitters [We don’t need to specify]————————————————

FYI if you don’t know who Lil Simz is please drive somewhere far far away thank you and say hi to `Fiona’ for me when you get there

Yes the females are often over looked often encouraged to market themselves a certain way
We won’t get into the s o c i a l politics. Doja is no stranger to the art of seduction.
The industry has seen a plethora of female talent over the years & Doja is where she is purely on talent

P.S keep your eyes on Chloe and Halie Bailey - Both amazing actors and Chloe just dropped a single ''',

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
