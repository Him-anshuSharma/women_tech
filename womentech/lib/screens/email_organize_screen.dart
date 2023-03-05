// ignore_for_file: unnecessary_const

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:womentech/providers/category_provider.dart';
import 'package:womentech/widgets/categories_card.dart';

class EmailOrganizerPage extends StatefulWidget {
  const EmailOrganizerPage({super.key});

  @override
  State<EmailOrganizerPage> createState() => _EmailOrganizerPageState();
}

class _EmailOrganizerPageState extends State<EmailOrganizerPage> {
  @override
  Widget build(BuildContext context) {
    //final Categories provider = Provider.of<Categories>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BgPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Add Keywords to Categories',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Customize your emails and filter them according to the keywords you select.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                '(Tap on categories to add keywords)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Consumer<CategoriesProvider>(
                builder: (context, provider, child) {
                  final allCategoryList = provider.getALLCategories();
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: allCategoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CatContainer(
                          catName: allCategoryList[index], color: Colors.red);
                    },
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
