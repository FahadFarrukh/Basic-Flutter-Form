import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class newlogin extends StatefulWidget {
  const newlogin({super.key});

  @override
  State<newlogin> createState() => _newloginState();
}

class _newloginState extends State<newlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DSU Portal'),
        backgroundColor: Color.fromARGB(255, 141, 0, 47),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: 400,
        
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),),
            child: Column(
              children: [
                  
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome To',
                        style: TextStyle(fontSize: 22.0),),
                        SizedBox(width: 7.0,),
                         Text('DSU Portal',
                         style: TextStyle(fontSize: 22.0),
                         selectionColor: Colors.amber,),
                      ],
                    ),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}