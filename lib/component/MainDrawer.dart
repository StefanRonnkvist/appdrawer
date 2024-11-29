import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DrawerStateInfo.dart';
import '../pages/MyHomePage.dart';
import '../pages/MyAboutPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer(this.currentPage, {super.key});

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    var currentDrawer = Provider.of<DrawerStateInfo>(context).getCurrentDrawer;
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              "Home",
              style: currentDrawer == 0
                  ? const TextStyle(fontWeight: FontWeight.bold)
                  : const TextStyle(fontWeight: FontWeight.normal),
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              if (currentPage == "Home") return;

              Provider.of<DrawerStateInfo>(context).setCurrentDrawer(0);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const MyHomePage(
                        title: "Home",
                        key: Key("Home"),
                      )));
            },
          ),
          ListTile(
            title: Text(
              "About",
              style: currentDrawer == 1
                  ? const TextStyle(fontWeight: FontWeight.bold)
                  : const TextStyle(fontWeight: FontWeight.normal),
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              if (currentPage == "About") return;
              Provider.of<DrawerStateInfo>(context).setCurrentDrawer(1);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const MyAboutPage()));
            },
          ),
        ],
      ),
    );
  }
}
