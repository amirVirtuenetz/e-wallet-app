import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,

      // for hide the keyboard on tap on screen
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            // leading: Padding(
            //   padding: const EdgeInsets.only(
            //       left: 22, top: 10, bottom: 10, right: 0),
            //   child: Container(
            //     // margin: EdgeInsets.only(left: 4, right: 4, top: 10, bottom: 10),
            //     height: 10,
            //     width: 10,
            //     decoration: BoxDecoration(
            //       border: Border.all(width: 0.2),
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(13),
            //     ),
            //     child: const Icon(
            //       Icons.arrow_back_ios_new_sharp,
            //       size: 20,
            //     ),
            //   ),
            // ),
            centerTitle: true,
            title: const Text(
              'Contact',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          backgroundColor: Colors.white,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(22),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        fillColor: Colors.grey[200],
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: 'Search Contacts',
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 17, top: 22, bottom: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recent Contact',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.grey),
                        ))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: ListView.builder(

                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, index) {
                          return const ListTile(
                            key: Key('key'),
                            title: Text(
                              'Clarisa Bates',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text('Bank - 002 1887 2532'),
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('lib/assets/images/profile.jpg'),
                            ),
                          );
                        }),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 25, right: 20, bottom: 0, top: 10),
                  child: Divider(
                    height: 1,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 17, bottom: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recent Contact',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.grey),
                        ))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        itemBuilder: (BuildContext context, index) {
                          return const ListTile(
                            key: Key('key'),
                            title: Text(
                              'Clarisaa Bates',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text('Bank - 002 1887 2532'),
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('lib/assets/images/profile.jpg'),
                            ),
                          );
                        }),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
