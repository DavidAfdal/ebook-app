import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/home/Components/recent_book.dart';
import 'package:flutter_application_1/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'))),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Hello Sarah'), Text('Good Morning')],
            ),
            Spacer(),
            Image.asset('assets/icons/menu.png', width: 18)
          ],
        ));
  }

  Widget searchField() {
    TextEditingController _searching = TextEditingController();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _searching,
        decoration: InputDecoration(
            hintText: 'Find Your Favorite Book',
            fillColor: grayColoSerchfield,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide.none),
            contentPadding: EdgeInsets.all(18),
            isCollapsed: true,
            suffixIcon: InkWell(
              onTap: () => {debugPrint(_searching.text), _searching.clear()},
              child: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Icon(Icons.search_rounded, color: whiteColor),
              ),
            )),
      ),
    );
  }

  Widget recentBook() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            RecentBook(image: 'assets/images/buku1.png', title: 'The Magic'),
            RecentBook(image: 'assets/images/buku2.png', title: 'Guy Kawasaki'),
            RecentBook(image: 'assets/images/buku3.png', title: 'The Lore'),
            RecentBook(
                image: 'assets/images/buku4.png', title: 'Who Moved My Cheese'),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    SizedBox(height: 30),
                    searchField(),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text('Recent Book'),
                    ),
                    SizedBox(height: 20),
                    recentBook()
                  ]),
            ),
          ],
        ));
  }
}
