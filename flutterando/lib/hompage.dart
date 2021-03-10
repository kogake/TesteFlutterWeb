import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int counter = 0;
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //widget pra criar uma barra laterla que abre
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                //usamos o clipRRect para cortar a imagem em círculo
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/kevin_img.png'),
                ),
                accountName: Text("kevin Koga"),
                accountEmail: Text('kevinkoga1@gmail.com')),
            //list tile é uma linha da lista
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              subtitle: Text("vamo começa a bvrincadeira"),
              onTap: () {
                print("home");
              },
            ),
            ListTile(
              leading: Icon(Icons.leak_remove),
              title: Text("Sair"),
              subtitle: Text("Logout"),
              onTap: () {
                print("Logout");
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Container(
            width: 100,
            height: 100,
          ),
          Switch(
            value: AppControler.instance.isDarkTheme,
            onChanged: (value) {
              AppControler.instance.changeTheme();
            },
          ),
          RaisedButton(
              onPressed: () => {Navigator.of(context).pushNamed('/estoques')})
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => (setState(() {
          counter++;
        })),
      ),
    );
  }
}
