import 'package:e_wallet_application/Features/Contacts/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../Receipts/screens/screens.dart';
import '../../Statistics/screens/screens.dart';
import '../../Transfer/screens/screens.dart';
import '../gridModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  void initState() {
    super.initState();
    index = 0;
    setState(() {});
  }

  List pageList = [
    const HomeScreen(),
    const ReceiptScreen(),
    const ContactScreen(),
    const StatisticScreen(),
    const TransferScreen(),
  ];

  @override
  final imageList = [
    'lib/assets/images/pexel.jpeg',
    'lib/assets/images/pexel1.jpeg',
  ];
  final List<GridModel> list = [
    GridModel(
        iconData: Icons.wifi,
        title: const Text("Internet"),
        color: const Color(0xffEE3636)),
    GridModel(
        iconData: Icons.electric_bolt,
        title: const Text("Electricity"),
        color: const Color(0xffFFB23E)),
    GridModel(
        iconData: Icons.payment_outlined,
        title: const Text("Voucher"),
        color: const Color(0xff4FCA24)),
    GridModel(
        iconData: Icons.add_box_outlined,
        title: const Text("Assurance"),
        color: const Color(0xff20C3E5)),
    GridModel(
        iconData: Icons.mobile_friendly_rounded,
        title: const Text(
          "Mobile\nCredit",
        ),
        color: const Color(0xff6C14EC)),
    GridModel(
        iconData: Icons.chat,
        title: const Text("Bill"),
        color: const Color(0xff2041F0)),
    GridModel(
        iconData: Icons.shopping_cart,
        title: const Text("Merchant"),
        color: const Color(0xffE02BE7)),
    GridModel(
        iconData: Icons.circle_notifications_outlined,
        title: const Text("More"),
        color: const Color(0xff6C14EC)),
  ];
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
                    left: 25,
                    top: 55,
                    child: Row(
                      children: [
                        Material(
                          // color: const Color(0xff4B00B7),
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              print('onTap');
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('lib/assets/images/profile.jpg'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 230,
                        ),
                        IconButton(
                          splashRadius: 40,
                          iconSize: 20,
                          splashColor: Colors.black,
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                          )),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      top: 100,
                      left: 133,
                      child: Text(
                        'Available Balance',
                        style: TextStyle(color: Colors.white54),
                      )),
                  const Positioned(
                      top: 115,
                      left: 113,
                      child: Text(
                        '\$450.54',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                ],
              ),
            ),

            ///
            Positioned(
              height: 430,
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 25, left: 23, bottom: 0),
                        child: Text(
                          'Payment List',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      GridView.builder(
                        // scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: list.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    child: Icon(
                                      list[index].iconData,
                                      color: list[index].color,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              list[index].title,
                            ],
                          );
                        },
                      ),
                      // promo and discount
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 22),
                        child: Row(
                          children: [
                            const Text(
                              'Promo & Discount',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 122,
                            ),
                            Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(7),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(7),
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: const Text(
                                    'See more',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.blueAccent),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 23, top: 10, right: 20, bottom: 0),
                        child: SizedBox(
                            height: 150,
                            child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                splashColor: Colors.grey.shade200,
                                onTap: () {
                                  print('object');
                                },
                                borderRadius: BorderRadius.circular(15),
                                child: GridView.builder(
                                  reverse: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: imageList.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: Stack(children: [
                                        Positioned(
                                          bottom: 10,
                                          child: Container(
                                            decoration: const BoxDecoration(),
                                            child: Image.asset(
                                              imageList[index],
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 22,
                                          left: 20,
                                          child: Text(
                                            'Special Offer for \nTodays Top Up',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 21,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ]),
                                    );
                                  },
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: 10,
                                          crossAxisCount: 1,
                                          childAspectRatio: 2 / 4),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 17,
              child: Stack(children: [
                Container(
                  height: 75,
                  width: 325,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BTN(
                        iconData: Icons.shop,
                        title: 'Top Up',
                        onPress: () {},
                      ),
                      BTN(
                        iconData: Icons.arrow_circle_up,
                        title: 'Send',
                        onPress: () {},
                      ),
                      BTN(
                        iconData: Icons.arrow_circle_up,
                        title: 'Request',
                        onPress: () {},
                      ),
                      BTN(
                        iconData: Icons.history,
                        title: 'History',
                        onPress: () {},
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}

class BuildNavigationItem extends StatelessWidget {
  final IconData iconData;
  final Color color;
  const BuildNavigationItem(
      {Key? key, required this.iconData, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Icon(
          iconData,
          color: color,
        ),
        height: 70,
        width: MediaQuery.of(context).size.width / 4);
  }
}

class BTN extends StatelessWidget {
  final IconData iconData;
  final String title;
  final void Function() onPress;
  const BTN(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Material(
        color: Colors.white,
        child: InkWell(
          radius: 60,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          onTap: onPress,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            height: 50,
            width: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: Colors.deepPurpleAccent,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 13, color: Color(0xff675F75)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
