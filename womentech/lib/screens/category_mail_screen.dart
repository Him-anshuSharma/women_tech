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
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/BgPage.png'),
              fit: BoxFit.cover,
            ),
          ),
      child: Container(margin: const EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(Icons.notifications_active),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                    ),
              ), 
                  
                ],
      ),
              Text("mail here"),]),))
    );
  }
}
