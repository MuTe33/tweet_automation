import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late TwitterApi _api;

  @override
  void initState() {
    super.initState();

    _api = TwitterApi(
      bearerToken: '',
      oauthTokens: const OAuthTokens(
        consumerKey: '',
        consumerSecret: '',
        accessToken: '',
        accessTokenSecret: '',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FD),
        ),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
      ],
      home: Scaffold(
        body: const Text('Hello'),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            try {
              await _api.tweets.createTweet(text: 'Helloworld');
            } catch (e, s) {
              print('WHAAAAT $e, s: $s');
            }
          },
          child: const Text('🐦'),
        ),
      ),
    );
  }
}
