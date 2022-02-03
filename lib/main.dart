import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './ethsync_localizations.dart';
// import './ethsync_scrollbars.dart';
import './ethsync_appbar.dart';

// import 'package:flutter_gen/app_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MaterialApp(home: ethSync()));
}

class ethSync extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("main loaded");
    //check Locale on load
    Locale myLocale = Localizations.localeOf(context);
    print(myLocale.toString() + ' on EthSyncPageStateless');
    return MaterialApp(
      // title: 'Localizations Sample App',
      // onGenerateTitle: (BuildContext context) =>
      //     EthSyncLocalizations.of(context).title,
      localizationsDelegates: [
        // AppLocalizations.localizationsDelegates,
        // AppLocalizations.delegate,
        const EthSyncLocalizationsDelegate(),
        // const EthSyncLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        // AppLocalizations.supportedLocales,
        Locale('en', 'en_US'), // English Default US,
        Locale('en', 'en_GB'), // English Default US,
        Locale('de', ''),
        Locale('fr', ''), // French
        // Try to match the languageCode, scriptCode, and countryCode with one in supportedLocales.
      ],
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      // home: MyHomePage(), //title: 'Flutter Lingo App'),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          // home: Scaffold(
          appBar: AppBarPage(),
          // drawer: EthSyncNavDrawer(),
          // bottomNavigationBar: NavigationBarPage(),
          // body: EthSyncScrollbars(),
          // body: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //     RaisedButton(
          //         child: const Text('SHOW BANNER'),
          //         onPressed: () {
          //           _bannerAd ??= createBannerAd();
          //           _bannerAd
          //             ..load()
          //             ..show();
          //         }),
          //     RaisedButton(
          //         child: const Text('SHOW BANNER WITH OFFSET'),
          //         onPressed: () {
          //           _bannerAd ??= createBannerAd();
          //           _bannerAd
          //             ..load()
          //             ..show(horizontalCenterOffset: -50, anchorOffset: 100);
          //         }),
          //     RaisedButton(
          //         child: const Text('REMOVE BANNER'),
          //         onPressed: () {
          //           _bannerAd?.dispose();
          //           _bannerAd = null;
          //         }),
          //     RaisedButton(
          //       child: const Text('LOAD INTERSTITIAL'),
          //       onPressed: () {
          //         _interstitialAd?.dispose();
          //         _interstitialAd = createInterstitialAd()..load();
          //       },
          //     ),
          //     RaisedButton(
          //       child: const Text('SHOW INTERSTITIAL'),
          //       onPressed: () {
          //         _interstitialAd?.show();
          //       },
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //Container   to Material App?
//       // child: Text(EthSyncLocalizations.of(context).title),
//       child: Text(
//         // EthSyncLocalizations.of(context).ethTextFonts,
//         EthSyncLocalizations.of(context).ethTextIntro,
//         textAlign: TextAlign.center,
//         textDirection: TextDirection.ltr,
//         // textHeightBehavior: TextHeightBehavior,
//         style: TextStyle(
//           color: Colors.blueAccent,
//           fontStyle: FontStyle.normal,
//           fontSize: 20.0,
//         ),
//       ),
//     );
//   }
// }

// flutter pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/main.dart
// flutter pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/ethsync_EthSyncLocalizations.dart
// flutter pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/ethsync_localizations.dart
// create  /lib/l10n

// i18n> flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_de.arb
// No @@locale or _locale field found in intl_de, assuming 'de' based on the file name.

// flutter pub run intl_tran slation:generate_from_arb \
// --output-dir=lib/l10n --no-use-deferred-loading \
// lib/main.dart lib/l10n/intl_*.arb

// new 20210803 + 20
// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_*.arb
// No @@locale or _locale field found in intl_messages, assuming 'messages' based on the file name.
// + messages_all + messages.messages

// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_es.arb lib/l10n/intl_de.arb lib/l10n/intl_messages.arb
// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/ethsync_localizations.dart lib/l10n/intl_es.arb lib/l10n/intl_de.arb lib/l10n/intl_messages.arb
// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/l10n/intl_es.arb lib/l10n/intl_de.arb lib/l10n/intl_*.arb
// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/ethsync_localizations.dart lib/l10n/intl_es.arb lib/l10n/intl_de.arb lib/l10n/intl_messages.arb
// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/ethsync_localizations.dart lib/l10n/intl_fr.arb lib/l10n/intl_de.arb lib/l10n/intl_en_GB.arb lib/l10n/intl_messages.arb

// flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading
//  lib/ethsync_EthSyncLocalizations.dart lib/l10n/intl_*.arb
//  flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/ethsync_EthSyncLocalizations.dart lib/l10n/intl_*.arb
//try

//kallium eg
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/localization.dart
// flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n \
//  --no-use-deferred-loading lib/localization.dart lib/l10n/intl_*.arb



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
