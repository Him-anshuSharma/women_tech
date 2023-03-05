import 'package:flutter/material.dart';

class CategoryEmailPage extends StatefulWidget {
  const CategoryEmailPage({super.key});

  @override
  State<CategoryEmailPage> createState() => _CategoryEmailPageState();
}

class _CategoryEmailPageState extends State<CategoryEmailPage> {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as String?;
    return Container(
    child: Text("mail here"),
    );
  }
}
