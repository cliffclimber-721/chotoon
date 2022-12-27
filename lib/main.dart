import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // hold a color -> const Color..
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // maintain padding
            crossAxisAlignment: CrossAxisAlignment.start,
          // upper box
          children: [
            const SizedBox(
              height: 80
            ),
            // text shown
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  const Text("Hey, Wonyoung", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500)),
                  // for opacity, const is not used
                  Text("Welcome back!", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            const Text("Total Balance", style: TextStyle(fontSize: 22, color: Colors.white)),
            const Text("\$ 12 345 678", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // decorate with container
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(45) 
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text("Transfer", style: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text("Request", style: TextStyle(fontSize: 18)),
                  ),
                )
              ],
            )
          ],
        )
      ),
    )
  );}
}