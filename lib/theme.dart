import 'package:flutter/material.dart';


class theme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color.fromARGB(255, 14, 172, 0)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Colors'),
      ),
      body: Center(
        child: Text(
          'Hello, world!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
