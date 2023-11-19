import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});
  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Second Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  child: const Text('Red'),
                  onPressed: () {
                    color = Colors.redAccent.shade700;
                    Navigator.pop(context, color);
                  }),
              ElevatedButton(
                  child: const Text('Sky'),
                  onPressed: () {
                    color = Colors.blueAccent.shade700;
                    Navigator.pop(context, color);
                  }),
              ElevatedButton(
                  child: const Text('Purple'),
                  onPressed: () {
                    color = Colors.purple.shade700;
                    Navigator.pop(context, color);
                  }),
              ElevatedButton(
                  child: const Text('Brown'),
                  onPressed: () {
                    color = Colors.brown.shade700;
                    Navigator.pop(context, color);
                  }),
              ElevatedButton(
                  child: const Text('Orange'),
                  onPressed: () {
                    color = Colors.deepOrange.shade700;
                    Navigator.pop(context, color);
                  }),
            ],
          ),
        ));
  }
}