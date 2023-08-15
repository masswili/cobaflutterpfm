import 'package:cobaflutterpfm/route_generator.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

Future<void> main() async {
  // initialize the cameras when the app starts
  WidgetsFlutterBinding.ensureInitialized();
  // running the app
  // runApp(
  //     MaterialApp(
  //       home: MyApp(),
  //       debugShowCheckedModeBanner: false,
  //       theme: ThemeData.dark(),
  //       localizationsDelegates: [ // Provide locale data and default text layout
  //         _localeOverrideDelegate,
  //         const TranslationsDelegate(), // points to the default library that handles translation logic (described later)
  //         GlobalMaterialLocalizations.delegate,
  //         GlobalWidgetsLocalizations.delegate,
  //       ],
  //       supportedLocales: [ // List of supported languages
  //         const Locale('en', ''),
  //         const Locale('in', ''),
  //       ],
  //     )
  // );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'PFM',
      theme: ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: BasePalette.primary,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   SpecificLocalizationDelegate _localeOverrideDelegate;
//   // This widget is the root of your application.
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       onGenerateRoute: RouteGenerator.generateRoute,
//       title: 'Breacnet',
//       theme: ThemeData(
//         fontFamily: 'NeoSans',
//         primaryColor: BasePalette.primary,
//         accentColor: BasePalette.accent,
//       ),
//       localizationsDelegates: [ // Provide locale data and default text layout
//         _localeOverrideDelegate,
//         const TranslationsDelegate(), // points to the default library that handles translation logic (described later)
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: [ // List of supported languages
//         const Locale('en', ''),
//         const Locale('in', ''),
//       ],
//     );
//   }
// }


