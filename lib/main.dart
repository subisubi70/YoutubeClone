import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Farm(),
    debugShowCheckedModeBanner: false,
  ));
}

class Farm extends StatelessWidget {
    Farm({Key? key}) : super(key: key);
List Hisham=[

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          width: 100,
          height: 50,
          alignment: Alignment.topLeft,
          child: Image.asset('assets/Youtubenew_generated.jpg'),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam,color: Colors.black,), onPressed: () {}),
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: () {}),
          Container(
            margin: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/dp.jpg"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (int i) {},
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"home,"),
          BottomNavigationBarItem(icon: Icon(Icons.trending_down_rounded),label:"treanding",),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions),label:"Subscription",),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label:"Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music),label:"Library"),
        ],
      ),
      body: _bodyWidget(),
    );
  }

  Widget _bodyWidget() {
    return ListView.builder(
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset("assets/youtube1.webp"),
          SizedBox(height: 5),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/dp.jpg"),
              ),
              title: Text("Youtube Ui Clone in flutter "),
              subtitle: Text(' programmers channel.195k views. 4 day ago')),
          Image.asset('assets/maldives.jpg'),
          SizedBox(height: 5),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/dp.jpg"),
              ),
              title: Text("Vaccation in maldives "),
              subtitle: Text(' Km vlog .100k views. 2 day ago')),
          Image.asset("assets/beach.jpg"),
          SizedBox(height: 5),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/beach.jpg"),
              ),
              title: Text("Beach vlog "),
              subtitle: Text(' vlog .195k views. 4 day ago')),

        ],


      ),
    );
  }
}
