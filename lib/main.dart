

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: (){
                  print("Contact is Starred");
                },
                icon: Icon(Icons.star_border),
                color: Colors.black,)
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                      "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                      height: 250,
                      fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Priyanka Tyagi",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildCallButton(),
                      buildTextButton(),
                      buildDirectionButton(),
                      buildEmailButton(),
                      buildPayButton(),
                      buildVideoCallButton()
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile(),
                otherPhoneListTile(),
                Divider(
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


Widget buildCallButton(){
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800
          )
      ),
      Text("Call")
    ],
  );
}

Widget buildTextButton(){
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.message,
          color: Colors.indigo.shade800,)
      ),
      Text("Text")
    ],
  );
}

Widget buildVideoCallButton(){
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.video_call, color: Colors.indigo.shade800,)
      ),
      Text("Video")
    ],
  );
}

Widget buildEmailButton(){
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.email, color: Colors.indigo.shade800,)
      ),
      Text("Email")
    ],
  );
}

Widget buildDirectionButton(){
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.directions, color: Colors.indigo.shade800,)
      ),
      Text("Directions")
    ],
  );
}

Widget buildPayButton(){
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.attach_money, color: Colors.indigo.shade800,)
      ),
      Text("Pay")
    ],
  );
}


Widget mobilePhoneListTile() {
  return ListTile(
    leading: Icon(Icons.call),
    title: Text("330-803-3390"),
    subtitle: Text("mobile"),
    trailing: IconButton(
      icon: Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: Text(""),
    title: Text("440-440-3390"),
    subtitle: Text("other"),
    trailing: IconButton(
      icon: Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget emailListTile(){
  return ListTile(
    leading: Icon(Icons.email),
    title: Text("priyanka@priyanka.com"),
    subtitle: Text("work"),
  );
}

