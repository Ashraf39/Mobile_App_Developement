import 'package:flutter/material.dart';
import 'package:ashraf/about.dart';
import 'package:ashraf/skill.dart';
import 'package:ashraf/work.dart';
import 'package:ashraf/experiences.dart';
import 'package:ashraf/portfolio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        // useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            //title: const Text('Personal Portfolio'),
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.person_rounded),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work),
                text: 'Work',
              ),
              Tab(
                icon: Icon(Icons.work_history),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.note_alt),
                text: 'Portfolio',
              ),
            ]),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text('Ashraf Bhuiyan'), // Replace with your name
                  accountEmail: Text(
                      'ashraf15-3950@diu.edu.bd'), // Replace with your email
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fdac134-1.fna.fbcdn.net/v/t39.30808-6/277229940_3174279679462201_876791244077171704_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeFPRPnpv1WDKDK3BUqwLOn_sxekO4fjK3WzF6Q7h-Mrde08MxaI3s24Yrwxr9EDHONTS1DPyCEyOK53a0FM3yaO&_nc_ohc=glA7s3NwoyYAX-IOb3L&_nc_ht=scontent.fdac134-1.fna&oh=00_AfDRwCMOEHiBRx02k2GBbhhduhu06I2ja72eu8k_lKtfmA&oe=651F0A3E'), // Replace with your profile image asset
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AboutPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Skills'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SkillsPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Work'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WorkPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work_history),
                  title: Text('Experiences'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ExperiencesPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.note_alt),
                  title: Text('Portfolio'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PortfolioPage())); // Close the drawer
                  },
                ),
                // Add more drawer items for other sections/pages
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AboutPage(),
              SkillsPage(),
              WorkPage(),
              ExperiencesPage(),
              PortfolioPage()
            ],
          ),
        ));
  }
}