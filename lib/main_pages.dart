import 'package:flutter/material.dart';

import 'Features/Contacts/screens/screens.dart';
import 'Features/Home/screens/home_screnn.dart';
import 'Features/Receipts/screens/screens.dart';
import 'Features/Statistics/screens/screens.dart';
import 'Features/Transfer/screens/screens.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pageList = [
    HomeScreen(),
    StatisticScreen(),
    ContactScreen(),
    ReceiptScreen(),
    TransferScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pageList[currentIndex],
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 22),
        child: SizedBox(
          height: 70,
          width: 70,
          child: Visibility(
            visible: true,
            child: FloatingActionButton(
              isExtended: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () {},
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    shape: BoxShape.circle,
                    color: Colors.deepPurpleAccent),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransferScreen()));
                    },
                    child: Icon(Icons.qr_code_scanner, size: 40)),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
          height: 80.0,
          color: Colors.white,
          child: Theme(
              // data: Theme.of(context).copyWith(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              // sets the background color of the `BottomNavigationBar`
              // canvasColor: Colors.white,
              // // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              // primaryColor: Colors.red,
              // bottomAppBarColor: Colors.green,
              // textTheme: Theme.of(context).textTheme.copyWith(
              //     caption: const TextStyle(
              //         color: Colors
              //             .grey))), // sets the inactive color of the `BottomNavigationBar`
              child: BottomNavigationBar(
                enableFeedback: false,
                onTap: onTap,
                elevation: 0,
                selectedItemColor: Colors.deepPurple,
                unselectedItemColor: Colors.grey.withOpacity(0.5),
                showSelectedLabels: false,
                showUnselectedLabels: true,
                currentIndex: currentIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                          child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.home),
                      )),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                          child: Padding(
                        padding: EdgeInsets.only(right: 55),
                        child: Icon(Icons.graphic_eq_rounded),
                      )),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Icon(Icons.chat),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Icon(Icons.perm_identity),
                        ),
                      ),
                      label: '')
                ],
              ))),
    );
  }
}
