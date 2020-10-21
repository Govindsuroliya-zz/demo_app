import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: UserAccountsDrawerHeader(
                  accountName: Text("Govind Suroliya"),
                  accountEmail: Text("govindsuroliya22@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    
                    backgroundImage: NetworkImage(
                        "https://scontent.fjai3-1.fna.fbcdn.net/v/t1.0-0/p526x296/118004612_804906976715756_6579800421252500191_n.jpg?_nc_cat=109&_nc_sid=84a396&_nc_ohc=07YyN7BmtlMAX9OCwsT&_nc_ht=scontent.fjai3-1.fna&tp=6&oh=7d894e7ab090f8af93b16783211635a8&oe=5FAAC48F"),
                  ))),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("govindsuroliya22@gmail.com"),
            trailing: Icon(Icons.logout),
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text("Balance"),
            subtitle: Text("45000"),
            trailing: Icon(Icons.account_balance_wallet),
          ),
          ListTile(
            leading: Icon(Icons.network_cell),
            title: Text("Net Banking"),
            subtitle: Text("ing@int.dev"),
            trailing: Icon(Icons.emoji_flags),
          ),
        ],
      ),
    );
  }
}
