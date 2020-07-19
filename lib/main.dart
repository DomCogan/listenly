import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'album_view.dart';
import 'artist_profile.dart';
import 'artist_profile_edit.dart';
import 'artist_profile_view.dart';
import 'home.dart';
import 'listener_profile.dart';
import 'listener_profile_edit.dart';
import 'login.dart';
import 'search_artist.dart';
import 'search_genre.dart';
import 'search_song.dart';
import 'signup.dart';
import 'song_view.dart';
import 'upload_album.dart';
import 'upload_single.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xF00FAFAA),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/sign_up': (context) => SignUp(),
        '/artist_profile': (context) => ArtistProfile(),
        '/artist_profile_view': (context) => ArtistProfileView(),
        '/artist_profile_edit': (context) => ArtistProfileEdit(),
        '/listener_profile': (context) => ListenerProfile(),
        '/listener_profile_edit': (context) => ListenerProfileEdit(),
        '/upload_single': (context) => UploadSingle(),
        '/upload_album': (context) => UploadAlbum(),
        '/home': (context) => Home(),
        '/search_song': (context) => SearchSong(),
        '/search_artist': (context) => SearchArtist(),
        '/search_genre': (context) => SearchGenre(),
        '/album_view': (context) => AlbumView(),
        '/song_view': (context) => SongView(),
      },
    );
  }
}
