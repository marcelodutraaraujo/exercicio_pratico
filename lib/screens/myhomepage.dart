import 'package:exercicio_pratico/screens/home.dart';
import 'package:exercicio_pratico/screens/profile.dart';
import 'package:exercicio_pratico/screens/settings.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
    Profile(),
    Settings(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text('Menu', style: TextStyle(fontSize: 30),),
                )
              ),
              const Divider(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Icon( Icons.home ),
                    Text(' Home'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Icon( Icons.person ),
                    Text(' Perfil'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Icon( Icons.settings ),
                    Text(' Configurações'),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _screens[_currentIndex] 
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon( Icons.home ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.person ),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.settings ), 
            label: "Configurações",
          )
        ]
      ),
    );
  }
}