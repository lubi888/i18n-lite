// import 'package:ethsync19/ethsync_urllinks.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
import './ethsync_localizations.dart';
// import './ethsync_urllinks.dart';
// import 'l10n/messages_messages.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
// enum Commands { heroAndScholar, hurricaneCame }
const double kToolbarHeight = 80.0;

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // whatever height you want

  @override
  Widget build(BuildContext context) {
    print("appBar loaded");
    return AppBar(
      // leading:  Icon(Icons.menu),
      centerTitle: true,
      title: Text(EthSyncLocalizations.of(context).title),
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.block, color: Colors.redAccent)),
        Tab(icon: Icon(Icons.school, color: Colors.yellowAccent)),
        Tab(icon: Icon(Icons.laptop, color: Colors.greenAccent)),
        Tab(icon: Icon(Icons.attach_money, color: Colors.amberAccent)),
      ]),
      actions: <Widget>[
        // Icon(Icons.rotate_90_degrees_ccw),
        Icon(Icons.search), //input before this?

        PopupMenuButton<WhyFarther>(
          //onSelected: (WhyFarther result) { setState(() { _selection = result; }); },
//                onSelected: (WhyFarther value) {
//                  setState(() {
////                    var _selection = value;
//                  });
//                },
//  onSelected: selectedTile,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
            PopupMenuItem<WhyFarther>(
              value: WhyFarther.harder,
              child: const Text('enum, Working a lot harder'),
            ),
            PopupMenuItem<WhyFarther>(
              value: WhyFarther.smarter,
              child: const Text('Being a lot smarter'),
            ),
            PopupMenuItem<WhyFarther>(
              value: WhyFarther.selfStarter,
              child: const Text('Being a self-starter'),
            ),
            PopupMenuItem<WhyFarther>(
              value: WhyFarther.tradingCharter,
              child: const Text('Placed in charge of trading charter'),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              child: Icon(Icons.link, color: Colors.greenAccent),
            ),
            PopupMenuItem(
              child: const Icon(Icons.home, color: Colors.redAccent),
            ),
            PopupMenuItem(
              child: const Text('ethereum website'),
              //https://www.ethereum.org/
            ),
            // PopupMenuItem(
            //   // child: const Text(
            //   //     'ethereum reddit'), //https://www.reddit.com/r/ethereum/
            //   child: Linkify(
            //       onOpen: (link) async {
            //         if (await canLaunch(link.url)) {
            //           await launch(link.url);
            //         } else {
            //           throw 'Could not launch $link';
            //         }
            //       },
            //       humanize: true,
            //       // text: EthSyncUrl.launchURLFlutter,
            //       text: 'https://www.ethereum.org'),
            // ),
            // PopupMenuItem(
            //   child: Linkify(
            //       onOpen: (link) async {
            //         if (await canLaunch(link.url)) {
            //           await launch(link.url);
            //         } else {
            //           throw 'Could not launch $link';
            //         }
            //       },
            //       humanize: true,
            //       text: 'https://ethereum.stackexchange.com/'),
            // ),
            // PopupMenuItem(
            //   child: const Text(
            //       'ethereum gitter'), //https://gitter.im/ethereum/home
            // ),
            // PopupMenuItem(
            //   child: Linkify(
            //       onOpen: (link) async {
            //         if (await canLaunch(link.url)) {
            //           await launch(link.url);
            //         } else {
            //           throw 'Could not launch $link';
            //         }
            //       },
            //       humanize: true,
            //       text: 'https://www.wikipedia.org/wiki/Ethereum/'),
            // ),
            // PopupMenuItem(
            //   child: Linkify(
            //       onOpen: (link) async {
            //         if (await canLaunch(link.url)) {
            //           await launch(link.url);
            //         } else {
            //           throw 'Could not launch $link';
            //         }
            //       },
            //       humanize: true,
            //       text: 'https://gitter.im/ethereum/home'),
            // ),
            // PopupMenuItem(
            //   child: Linkify(
            //       onOpen: (link) async {
            //         if (await canLaunch(link.url)) {
            //           await launch(link.url);
            //         } else {
            //           throw 'Could not launch $link';
            //         }
            //       },
            //       humanize: true,
            //       text: 'https://www.ethSync.org'),
            // ),
            const PopupMenuDivider(),
            PopupMenuItem(
              child: Icon(Icons.settings, color: Colors.redAccent),
            ),
            PopupMenuItem(
              child: const Text('Settings'),
            ),
            PopupMenuItem(
              child: const Text('Theme Light'),
            ),
            PopupMenuItem(
              child: const Text('Theme Dark'),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              child: Icon(Icons.contact_mail, color: Colors.redAccent),
            ),
            // PopupMenuItem(
            //   child: const Text('About'),
            // ),
            // PopupMenuItem(
            //   child: const Text('Contact'),
            // ),
            PopupMenuItem(
              child: Text(EthSyncLocalizations.of(context).about),
            ),
            PopupMenuItem(
              child: Text(EthSyncLocalizations.of(context).contact),
            ),
            PopupMenuItem(
              child: Text(EthSyncLocalizations.of(context).ethImgTermGreen),
            ),
            PopupMenuItem(
              child: const Text('Report Errors & Bugs'),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              child: Icon(Icons.language, color: Colors.redAccent),
            ),
            // PopupMenuItem(
            //   // child: const Text('English: EN'),
            //   child: Linkify(
            //       onOpen: (link) async {
            //         if (await canLaunch(link.url)) {
            //           await launch(link.url);
            //         } else {
            //           throw 'Could not launch $link';
            //         }
            //       },
            //       humanize: true,
            //       text: 'https://google.com'),
            // ),
            PopupMenuItem(
              child: const Text('French : Francais : FR'),
            ),
            PopupMenuItem(
              child: const Text('German : Deutsch : DE'),
            ),
            PopupMenuItem(
              child: const Text('Italian : Italiano : IT'),
            ),
            PopupMenuItem(
              child: const Text('Spanish : Espanol : ES'),
            ),
            PopupMenuItem(
              child: const Text('Japanese : Nihongo : JP'),
            ),
            PopupMenuItem(
              child: const Text('Chinese : Mandarin : CN-north'),
            ),
            PopupMenuItem(
              child: const Text('Chinese : Cantonese : CN-south'),
            ),
            const PopupMenuDivider(),
          ],
        )
      ],
    ); //
  }
}
