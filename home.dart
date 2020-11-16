import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

myApps()
{
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;
  Function play=() async {
    int result = await audioPlayer.play('https://files.freemusicarchive.org/storage-freemusicarchive-org/music/WFMU/Broke_For_Free/Directionless_EP/Broke_For_Free_-_01_-_Night_Owl.mp3');
    if (result == 1) {
      // success
    }
  };
  Container bodycontainer=Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      image:DecorationImage(image: NetworkImage('https://r1.ilikewallpaper.net/iphone-wallpapers/download/17302/Music-background-iphone-wallpaper-ilikewallpaper_com.jpg'),fit: BoxFit.cover)),  
    child: Column(children: <Widget>[
      Container(
        width: 200,
        height: 300,
        child: Row(
          children:<Widget>[Text("hello"),
         RaisedButton(
            child: Icon(Icons.local_play),
             onPressed: play
          ) ],
          ),
      ),
    ],
  ));
  Scaffold scaff=Scaffold(
    appBar:AppBar(
      elevation:10 ,
      title: Text("Mehul's Spotify"),
      backgroundColor: Colors.green,
      ) ,
      body:bodycontainer,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scaff,
    );
}