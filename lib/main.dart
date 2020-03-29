import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() => runApp(EasyLocalization(
      child: LearnMultilangApp(),
      supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
      path: 'assets/langs',
    ));
