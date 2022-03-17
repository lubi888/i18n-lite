import 'package:flutter/material.dart';
// import './ethsync_scrollbar1.dart';
import './ethsync_scrollbar2.dart';
// import './ethsync_scrollbar3.dart';
// import './ethsync_scrollbar4.dart';

class EthSyncScrollbars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print current locale
    Locale myLocale = Localizations.localeOf(context);
    print(myLocale.toString() + ' on EthSyncHomePage Stateless');
    return TabBarView(
      children: [
        //     /////////////////Tab 1
        // Scrollbar1(),
        // //     /////////////////Tab 2
        Scrollbar2(),
        //     /////////////////Tab 3
        // Scrollbar3(),
        // //     /////////////////Tab 4
        // Scrollbar4(),
      ],
    );
  }
}
