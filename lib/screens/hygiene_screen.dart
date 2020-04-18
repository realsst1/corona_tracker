import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HygieneScreen extends StatefulWidget {
  @override
  _HygieneScreenState createState() => _HygieneScreenState();
}

class _HygieneScreenState extends State<HygieneScreen> {


  VideoPlayerController _videoController;
  Future<void> _initializeVideoPlayerFuture;

  static String id=YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=3PmVJQUCm4E");
  YoutubePlayerController _youtubePlayerController;


  @override
  void initState() {
//    _videoController=VideoPlayerController.network("https://youtu.be/AENVH-ZqKDQ");
//    _initializeVideoPlayerFuture=_videoController.initialize();
//    _videoController.setLooping(true);

    _youtubePlayerController=YoutubePlayerController(
        initialVideoId: id,
        flags:YoutubePlayerFlags(
            autoPlay: false,
        )
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
            "Handwash - The Right Way",
              style: GoogleFonts.poppins(
                letterSpacing: 2,
                color: Colors.black
              ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Card(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _youtubePlayerController,
                showVideoProgressIndicator: true,
                bottomActions: <Widget>[
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  FullScreenButton(controller: _youtubePlayerController,)
                ],
                onReady: (){
                  _youtubePlayerController.play();
                },
                onEnded: (metaData){
                  _youtubePlayerController.seekTo(Duration(milliseconds: 0));
                  _youtubePlayerController.pause();
                },
              ),
              SizedBox(height: 5.0,),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                child: Text(
                  "Follow these 7 steps:",
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    decoration: TextDecoration.underline
                  ),
                ),
              ),
              Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    ListTile(
                      title:Text("Step 1: Wet hands",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                        "Wet your hands and apply enough liquid soap to create a good lather. The temperature of the water should be between 35ºC and 45ºC.",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    ListTile(
                      title:Text("Step 2: Rub Palms Together",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                          "Rub your hands palm to palm in circular motions. Rotate clockwise and anticlockwise.",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0
                        ),
                      ),
                    ),
                    ListTile(
                      title:Text("Step 3: Rub the Back of Hands",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                          "With your fingers linked through the other hand, use your right palm to rub the back of your left hand. Then swap.",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0
                        ),
                      ),
                    ),
                    ListTile(
                      title:Text("Step 4: Interlink Your Fingers",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                          "Link your fingers together, facing each other, into clasped hands. Then rub your palms and fingers together.",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0
                        ),
                      ),
                    ),
                    ListTile(
                      title:Text("Step 5: Cup Your Fingers",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                          "Cup your fingers together, with your right hand over and your left hand under. With your fingers interlocked, rub the backs of them against your palms. Then swap.",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0
                        ),
                      ),
                    ),
                    ListTile(
                      title:Text("Step 6: Clean the Thumbs",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                          "Enclose your right hand around your left thumb and rub as you rotate it, then swap.",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0
                        ),
                      ),
                    ),
                    ListTile(
                      title:Text("Step 7: Rub Palms with Your Fingers",style: GoogleFonts.poppins(fontSize: 20.0),),
                      subtitle: Text(
                          "Rub your fingers over your left palm in a circular motion, then swap.",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
