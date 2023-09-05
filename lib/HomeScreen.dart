import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(
        title: Text('whatsapp'),
        centerTitle: false,
        bottom: const TabBar(
          tabs: [
            Tab(child:Icon(Icons.camera_alt)),
            Tab(child:Text('Call')),
            Tab(child:Text('Chats')),
            Tab(child:Text('status')),
          ],
        ),
        actions:  [
          Icon(Icons.search),
          SizedBox(width: 10),
          PopupMenuButton(
              itemBuilder:(context,) => const[
                PopupMenuItem(child:
                Text
                  ('New Group')),
                PopupMenuItem(child:
                Text
                  ('Setting')),
                PopupMenuItem(child:
                Text
                  ('Logout')),
              ]
          ),
          SizedBox(width: 10),
        ],

      ),
      body:  TabBarView(
        children: [
          Text('camera'),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context,index){
                return
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/17781604/pexels-photo-17781604/free-photo-of-fashion-people-woman-girl.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'),
                    ),
                    title: Text('Nur Denius'),
                    subtitle: Text(index/2 ==0 ?'You missed audio call':'call time is 12:23s'),
                    trailing: Icon( index/2 ==0 ?Icons.call:Icons.video_call),
                    focusColor: Colors.teal,
                  );
              }
          ),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context,index){
                return
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/17781604/pexels-photo-17781604/free-photo-of-fashion-people-woman-girl.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'),
                    ),
                    title: Text('Iffat Hanif'),
                    subtitle: Text('where are you'),
                    trailing: Text('6.30 pm'),
                    focusColor: Colors.teal,
                  );
              }
          ),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context,index){
                return
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/17781604/pexels-photo-17781604/free-photo-of-fashion-people-woman-girl.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'),
                      ),
                    ),
                    title: Text('Recent updates'),
                    subtitle: Text('Iffat Hanif'),
                    trailing: Text('32m ago'),
                    focusColor: Colors.teal,
                  );
              }
          ),
        ],
      ),
    ));
  }
}
