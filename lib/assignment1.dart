import 'package:flutter/material.dart';

class Assignment1Page extends StatefulWidget {
  const Assignment1Page({super.key});

  @override
  State<Assignment1Page> createState() => _Assignment1PageState();
}

class _Assignment1PageState extends State<Assignment1Page> {
  Color iconColor = Colors.grey; // Initial color of the heart icon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mission 1", 
          style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.blue,
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    child: ClipRRect(
                      child: Image.asset(
                        'images/foto1.jpeg',
                        fit: BoxFit.fill,
                        height: double.infinity,
                      ),
                    )
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'images/expandables.jpeg',
                        fit: BoxFit.cover
                      ),
                    )
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              // top: 10,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  setState(() {
                    iconColor = (iconColor == Colors.red) ? Colors.grey : Colors.red; // Toggle color between red and grey
                  });
                },
                child: Icon(Icons.favorite, color: iconColor), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}