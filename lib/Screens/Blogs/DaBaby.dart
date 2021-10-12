import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/Screens/Blogs/Dave/Dave.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';

class Kendrick extends StatefulWidget {
  @override
  _Kendrick createState() => _Kendrick();
}

class _Kendrick extends State<Kendrick> {
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
                      "NU THOUGHTS",
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
                                '''It's time for Kendrick''',
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
                'images/NU.png',
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
                          '''Now a moment you may have never thought you’d see what a blessing will be to you guys. So we have exclusive information about details of Kendrick Lamar’s upcoming album.

Kendrick took to instagram not too long ago announcing he would be releasing his last studio album with TDE.

 

A two page website was created @: https://oklama.com/, https://oklama.com/nuthoughts

Titled ‘NU THOUGHTS’. ''',

                          //overflow: TextOverflow.ellipsis,
                          style: TextStyle(height: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Image.asset(
                    'images/Kendrick.jpeg',
                    // height: 50,
                  ),
                  SizedBox(height: 40),
                  Text(
                    '''The website has a paragraph where Kendrick talks about his thoughts & feelings most notable comments:

‘I spend most of my days with fleeting thoughts. Writing. Listening.’

‘I go months without a phone’

‘God speak through my music and family’

‘I feel joy to have been a part of such a cultural imprint after 17 years’

‘There’s beauty in completion. And always faith in the unknown.’

‘Thank you for keeping me in your thoughts. I’ve prayed for you all.’

‘collecting old Beach cruisers’

You see that last line yeah, cruisers are f*ck off boats big tings so either I’m buzzing or Kendrick is about to invade a country via sea. Let us know what you think? #EmailUs


When will Kendrick Lamar's new album be released?

Speculation has been further with the artist having registered a range of new songs with ASCAP (American Society of Composers, Authors and Publishers).

Via - DJAkademiks Instagram https://www.instagram.com/p/CTaPm90rG5O/?utm_source=ig_embed''',

                    //overflow: TextOverflow.ellipsis,
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(height: 40),
                  Image.asset(
                    'images/Tracklist.png',
                    // height: 50,
                  ),
                  SizedBox(height: 40),
                  Text(
                    '''The tracks registered are named:

'Before The Hangman’s Noose’,
‘Comfortable’,
‘Director’,
‘Fighter Theif In The Night’,
‘Fade To Black’,
‘Erika Kane’, ‘
End Of The Line’,
‘Of Paupers And Poets’,
‘Believe’,
‘Driving Down The Darkness’,
'End Of The Line’
‘Fell For You’.

Will this be Kendrick Lamar's last album?

Kendrick fans have noticed that the stars letter says he is producing his "final TDE album".

However, whilst he says this is his final album with TDE, it may not be his final album released.''',
                    style: TextStyle(height: 2),
                  ),
                  SizedBox(height: 40),
                  Image.asset(
                    'images/Kendrick2.jpeg',
                    // height: 50,
                  ),
                  SizedBox(height: 20),
                  Text('Thanks for reading Peace, Love & Guidance'),
                  SizedBox(height: 8),
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
