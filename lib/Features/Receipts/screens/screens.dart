import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
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
                                  Border.all(width: 0.5, color: Colors.white70),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () {
                                // Navigator.pop(context);
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
                            'Reciept',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 105,
                        ),
                        Container(
                          // margin: EdgeInsets.only(left: 4, right: 4, top: 10, bottom: 10),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.5, color: Colors.white70),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.share,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      child: Container(
                    child: Column(
                      children: [Icon(Icons.star_half_sharp)],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
              height: 400,
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  // borderRadius: BorderRadius.only(
                  //   topRight: Radius.circular(20),
                  //   topLeft: Radius.circular(20),
                  // ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff954EFB),
                                  Color(0xff812EF9),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(
                            'Done',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 150,
                left: 31,
                child: Column(
                  children: [
                    Container(
                      height: 450,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.star_half_sharp,
                              size: 40,
                            ),
                          ),
                          Text(
                            'Transfer Successful',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Your money has been transfered\n successfuly!',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 11),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Divider(
                            height: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Text(
                                  'Transfer Amount',
                                  style: TextStyle(color: Colors.black54),
                                ),
                                SizedBox(
                                  width: 105,
                                ),
                                Text(
                                  '120.24',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                            title: Text(
                              'Clarisaa Bates',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text('Bank - 002 1887 2532'),
                            trailing: Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ]),
        ));
  }
}
