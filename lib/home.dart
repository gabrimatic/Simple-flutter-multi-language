import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'hello',
            ).tr(context: context), // hello
            FlatButton(
              onPressed: _changeLang,
              child: Text("change_lang").tr(context: context), // change lang
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }

  void _changeLang() {
    EasyLocalizationProvider.of(context).locale =
        (EasyLocalizationProvider.of(context).locale == Locale('en', 'US'))
            ? Locale('de', 'DE')
            : Locale('en', 'US');
  }
}
