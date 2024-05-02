import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AppTabBar(),

    debugShowCheckedModeBanner: false,
  ));
}

class AppTabBar extends StatefulWidget {
  const AppTabBar({super.key});

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Guias"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.cloud),
              ),
              Tab(
                icon: Icon(Icons.beach_access),
              ),
              Tab(
                icon: Icon(Icons.settings),
              )
            ],
          ),
        ),
        
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 350),
              child: Column(
              children:
              [
                Center(
                    child: Text("Sem chuvas no céu"),
                )
              ]
            )
            ),

             Padding(
              padding: EdgeInsets.only(top: 350),
              child: Column(
              children:
              [
                Text("Dia ensolarado"),
              ]
            )
            ),

              Padding(
              padding: EdgeInsets.only(top: 350),
              child: Column(
              children:
              [
                Text("Configurações"),
              ]
            )
            )
          ]
        )
      )
    );
  }
}