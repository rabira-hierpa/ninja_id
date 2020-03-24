import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Ninja ID Cards'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/img/myprofilepic.jpg'),
              radius: 60,
            )),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 1,
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Rabra Hierpa',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'rabira.hierpa@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      ninjaLevel == 0
                          ? ninjaLevel = 0
                          : ninjaLevel -= 1;
                    });
                  },
                  child: Text('-',style:TextStyle(fontSize: 38)),
                  backgroundColor: Colors.grey[800],
                ),
                SizedBox(width: 230,),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      ninjaLevel += 1;
                    });
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.grey[800],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
