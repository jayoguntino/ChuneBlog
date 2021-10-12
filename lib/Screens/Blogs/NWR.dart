import 'package:flutter/material.dart';
import 'package:website/Screens/MailingList/Layout.dart';
import 'package:website/Screens/Shop/Shop.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

class NWR extends StatefulWidget {
  @override
  _NWR createState() => _NWR();
}

class _NWR extends State<NWR> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset('images/CHUNExNWR.mp4');

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
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
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 500,
              child: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // If the VideoPlayerController has finished initialization, use
                    // the data it provides to limit the aspect ratio of the video.
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      // Use the VideoPlayer widget to display the video.
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    // If the VideoPlayerController is still initializing, show a
                    // loading spinner.
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),

      bottomNavigationBar: Container(
        color: Colors.blue.withOpacity(0.8),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Row(
            children: [
              SizedBox(width: 20),
              GestureDetector(
                child: Container(
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
                ),
                onTap: _launchURL
                
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  _launchURL() async {
  const url = 'https://form.jotform.com/212672411522042';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

}