
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 138, 0, 46),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
           SizedBox(height: 30.0,),
              Text('Name',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 138, 0, 46),
                   letterSpacing: 2.0,
                   fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(height: 10.0),
               Text('Fahad Farrukh',
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 40.0),
                Text('Semester',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 138, 0, 46),
                   letterSpacing: 2.0, fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(height: 10.0),
               Text('6th',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 50.0),
              Row(
                children: [
                  
                  Icon(Icons.email,size: 32,color: Color.fromARGB(255, 138, 0, 46),),
                  SizedBox(width: 10.0),
                  Text('fahadfarrukh26@gmail.com',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                  ),)


                ],
              )
            ],
          ),
        ),
        ),


    );
  }
}
