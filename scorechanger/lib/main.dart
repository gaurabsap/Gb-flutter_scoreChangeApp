import 'package:flutter/material.dart';


void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "score app",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int num = 0;
  void increaseNumber (){
    setState(() {
      num ++;
    });
  }
    void decreaseNumber (){
    setState(() {
      num --;
    });
  }
      void reset (){
    setState(() {
      num = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score changing app", style: TextStyle(fontSize: 22,),),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_rounded),
        onPressed: () {
          reset();
        },
      ),
      body: 
      Column(
        children: [
           const SizedBox(height: 80,),
           const Center(child:Text("Your score is", style: TextStyle(color: Colors.green, fontSize: 25),)),
           const SizedBox(height: 60,),
           Center(child: Text(num.toString(), style: const TextStyle(color: Colors.green, fontSize: 80, fontWeight: FontWeight.w900),)),
           const SizedBox(height: 70,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            increaseNumber();
          }, child: const Text("Increase")),
          const SizedBox(width: 40,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: decreaseNumber,
            child: const Text("Decrease"),

      ),
        ],
      )
        ],
      ),
    );
  }
}