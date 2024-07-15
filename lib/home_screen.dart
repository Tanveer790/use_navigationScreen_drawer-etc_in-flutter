import 'package:flutter/material.dart';
import 'package:nav_drwr/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff764abc),
          title: const Center(child: Text('Home Screen')),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc),
                ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/733767/pexels-photo-733767.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  accountName: Text('Tanveer Syed'),
                  accountEmail: Text('tansyed790@gmail.com')),
              ListTile(
                leading: const Icon(Icons.home, size: 40,),
                title: const Text('page 1'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);},
              ),
              ListTile(
                leading: Icon(Icons.calendar_month, size: 40,),
                title: Text('page 2'),
                onTap: (){
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                  // Navigator.push(
                  // context, MaterialPageRoute(builder: (context) => const ScreenTwo()));
                },
                child: const Text('click here'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
