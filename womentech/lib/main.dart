import 'package:flutter/material.dart';
import 'package:womentech/providers/category_provider.dart';
import 'package:womentech/providers/keyword_provider.dart';
import 'package:womentech/screens/categories_screen.dart';
import 'screens/home_screen.dart';
import 'screens/email_organize_screen.dart';
import 'package:provider/provider.dart';
import 'remote/google_sign_in.dart';
import 'screens/authentication.dart';
import 'screens/keywords_screen.dart';
import 'package:womentech/providers/category_provider.dart';
import 'screens/category_mail_screen.dart';
import 'screens/categories_screen.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => KeywordListProvider()),
        ChangeNotifierProvider(create: (context) => CategoriesProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: '/authenticationPage',
      routes: {
        '/':(context) =>  const HomePage(),
        '/EmailOrganizerPage' : (context) => const EmailOrganizerPage(),
        '/authenticationPage' : (context) => const AuthenticationPage(),
        '/keywordsPage' : (context) => const KeywordPage(),
        '/categoriesPage' : (context) => const CategoryPage(),
        '/categoryMailPage' : (context) => const CategoryEmailPage(),
      },
      )
    );
  }
}