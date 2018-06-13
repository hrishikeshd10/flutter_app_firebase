import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hrishikesh Deshmukh'),
      ),
      drawer: new Drawer(
          child: new Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.pink,
                child: new Text('HD'),
              ),
              accountName: new Text('Hrishikesh Deshmukh'),
              accountEmail: new Text('hrishi.montfort@gmail.com'),
             ),

         new ListBody(children: <Widget>[
           new ListTile(title: new Text('Programming'),
               trailing: new Icon(Icons.code),
               subtitle: new Text('Learn programming from the experts!!'),
               onTap: (){
                 Navigator.pop(context);
               }), //Programming

           new ListTile(title: new Text('Workshops'),
             subtitle: new Text('Know about the various workshops by S2P Edutech!!'),
             trailing: new Icon(Icons.import_contacts),
             onTap: (){Navigator.pop(context);},),
           //Workshops List Tile

           new ListTile(title: new Text('Internships'),
             subtitle: new Text('Be an Intern to learn about new Technologies !!'),
             trailing: new Icon(Icons.laptop_mac),
             onTap: (){Navigator.pop(context);},
           ), // Internship List tile,



           new ListTile(title: new Text('Training'),
             subtitle: new Text('Enroll to get trained by proffesional in various domains !!'),
             trailing: new Icon(Icons.contact_mail),
             onTap: (){Navigator.pop(context);},),

           new ListTile(title: new Text('Photo Gallery'),
             subtitle: new Text('Explroe the photosby S2P Edutech !!'),
             onTap: (){Navigator.pop(context);},
             trailing: new Icon(Icons.photo_album),),

           new ListTile(title: new Text('About Us'),
             subtitle: new Text('Know our staff at S2P Edutech !!'),
             trailing: new Icon(Icons.group),
             onTap: (){Navigator.pop(context);},
           ),

           new ListTile(title: new Text('Sign Out'),
             trailing: new Icon(Icons.account_circle),
             onTap: (){Navigator.pop(context);},),

           new ListTile(title: new Text('Sign Out'),
             trailing: new Icon(Icons.account_circle),
             onTap: (){Navigator.pop(context);},),
            

           
         ],)




        ],
      )),
      body: new Center(
        child: new Text('Hrishikesh Deshmuhk'),
      ),
    );
  }
}
