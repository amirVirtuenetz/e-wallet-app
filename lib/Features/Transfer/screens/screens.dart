import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Receipts/screens/screens.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  var txt = '';
  List number = [''];
  void valueChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          body: Stack(children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff4B00B7),
                  Color(0xff230057),
                ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    left: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, top: 0, bottom: 0, right: 0),
                          child: Container(
                            // margin: EdgeInsets.only(left: 4, right: 4, top: 10, bottom: 10),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.7, color: Colors.white70),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_sharp,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: const Text(
                            'Send Money',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              height: 600,
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffFEFEFE),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        child: Container(
                          child: InkWell(
                            onTap: () {},
                            child: ListTile(
                              onTap: () {},
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('lib/assets/images/profile.jpg'),
                              ),
                              title: Text(
                                'Clasicca',
                              ),
                              subtitle: Text('Bank - 0002 1887 2532'),
                              trailing:
                                  Icon(Icons.keyboard_arrow_down_outlined),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              txt,
                              style: TextStyle(
                                  fontSize: 40,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 290,
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NUMBTN(
                                title: '1',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '2',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '3',
                                onPress: () {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NUMBTN(
                                title: '4',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '5',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '6',
                                onPress: () {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NUMBTN(
                                title: '7',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '8',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '9',
                                onPress: () {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NUMBTN(
                                title: '.',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: '0',
                                onPress: () {},
                              ),
                              NUMBTN(
                                title: 'DE',
                                onPress: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffDBC5FD).withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                            gradient: LinearGradient(
                                colors: const [
                                  Color(0xff954EFB),
                                  Color(0xff812EF9),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 50,
                        width: 250,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    child: AlertDialog(
                                        scrollable: true,
                                        backgroundColor: Colors.white,
                                        content: Container(
                                          child: SingleChildScrollView(
                                              child: Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color:
                                                              Color(0xffDBF3EB),
                                                          spreadRadius: 5)
                                                    ]),
                                                child: Image.asset(
                                                  'lib/assets/icons/tick.png',
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                'Transfer Successful',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Text(
                                                'Your money has been transfered\n                  successfuly!',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 11),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Divider(
                                              height: 1,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 1, top: 15, bottom: 10),
                                              child: Row(
                                                children: const [
                                                  Text(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    'Transfer Amount',
                                                    style: TextStyle(
                                                        color: Colors.black54),
                                                  ),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  Text(
                                                    '\$120.24',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Card(
                                                surfaceTintColor: Colors.white,
                                                margin: EdgeInsets.all(0),
                                                child: ListTile(
                                                  onTap: () {},
                                                  leading: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        'lib/assets/images/profile.jpg'),
                                                  ),
                                                  title: Text(
                                                    'Clasicca',
                                                  ),
                                                  subtitle: Text(
                                                      'Bank - 0002 1887 2532'),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3, top: 20),
                                                  child: Text(
                                                    'Date & time',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                                SizedBox(width: 30),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 3, top: 20),
                                                  child: Text(
                                                    '12 Feb 2022, 10.30 PM',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3, top: 10),
                                                  child: Text(
                                                    'No. Ref',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                                SizedBox(width: 83),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3, top: 10),
                                                  child: Text(
                                                    '11788889028711',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12),
                                              child: Divider(
                                                height: 1,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            ExpansionTile(
                                              textColor: Colors.black,
                                              iconColor: Colors.black,
                                              expandedAlignment:
                                                  Alignment.topLeft,
                                              collapsedTextColor: Colors.black,
                                              collapsedIconColor: Colors.black,
                                              title: Text('See Detail'),
                                              children: const [
                                                Text('data'),
                                                Text('data'),
                                                Text('data'),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color(
                                                                  0xffDBC5FD)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                          colors: const [
                                                            Color(0xff954EFB),
                                                            Color(0xff812EF9),
                                                          ],
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  height: 50,
                                                  width: 250,
                                                  child: const Center(
                                                    child: Text(
                                                      'Done',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ])),
                                        )),
                                  );
                                });
                          },
                          child: Center(
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}

class ButtonModel extends StatelessWidget {
  var num;

  ButtonModel({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(47, 50, 40, 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 34,
          width: 30,
          child: Center(
              child: Text(
            num,
            style: TextStyle(fontSize: 30, color: Colors.grey[500]),
          )),
          decoration: BoxDecoration(),
        ),
      ),
    );
  }
}

class Dialogue extends StatefulWidget {
  const Dialogue({Key? key}) : super(key: key);

  @override
  State<Dialogue> createState() => _DialogueState();
}

class _DialogueState extends State<Dialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [],
      ),
    );
  }
}

class BTN extends StatelessWidget {
  final String title;
  final Colors color;

  const BTN({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NUMBTN extends StatelessWidget {
  final String title;
  final void Function() onPress;
  const NUMBTN({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          // txt = txt + txt.toString();
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
