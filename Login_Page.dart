import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home : Scaffold(
        appBar : AppBar(
            backgroundColor: Color(0xFF00E676),
            title: Text("Login App" , style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 30 ,
              color: Colors.white ,
            ),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu), onPressed: () { },
            )
        )

        , body : Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.teal,

                child : CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/b/lionel-messi-22716478.jpg',
                  ),
                ),
              ),

              Text("Leo Messi" ,
                style: TextStyle(
                  color: Colors.black ,
                  fontSize: 40 ,
                  fontWeight: FontWeight.bold ,
                ),

              ),

              Text("The Goat & The Best Player" ,
                style: TextStyle(
                  color: Colors.teal ,
                  fontSize: 15 ,
                  fontWeight: FontWeight.bold ,
                  letterSpacing: 5,
                ),
              ),

              Divider(
                thickness: 2,
                color: Colors.grey,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              TextButton(onPressed: () { }, child: Text("OK") ),

              Text("Signup",
                style: TextStyle(
                  color : Colors.blue,
                  fontSize: 15,
                ),
              ),

            ]
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed :() {} ,
          child: Icon(Icons.insert_comment_outlined),),

      ),
    );

  }

}