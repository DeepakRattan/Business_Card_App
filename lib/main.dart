import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
/* This is a business card app with the basic details which uses the following component:
* 1. Adding custom font in Flutter App
* 2. Adding material icon with Icon widget
* 3. Layout Widget - Row and Column
* 4. CircleAvatar widget
* 5. Card & ListTile Widget
* 6. SizedBox with Divider() child for divider
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/DR.jpg'),
            ),
            Text(
              'Deepak Rattan',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Souce Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            // Add divider
            SizedBox(
              height: 20.0,
              width: 210.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),

            /* Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    //size: 100.0,
                    color: Colors.teal,
                  ),
                  // For spacing b/w Icon and Text ,use SizedBox()
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+91-8198008555',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  )
                ],
              ),
            ),*/
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 - 8198008555',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
              ),
            ),
            /* Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'mca.deepakrattan@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'),
                  )
                ],
              ),
            )*/
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'mca.deepakrattan@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
