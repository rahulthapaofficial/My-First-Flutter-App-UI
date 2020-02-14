import 'package:CourierMS/branch_location.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:CourierMS/main.dart';
import 'package:flutter/material.dart';

import 'package:CourierMS/home_page_background.dart';
import 'package:CourierMS/content_widget.dart';
import 'package:CourierMS/infobar_page.dart';
import 'package:CourierMS/quickbuttons_page.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Dashboard extends StatelessWidget {
  RefreshController _refreshController =
    RefreshController(initialRefresh: false);

  void _onRefresh() async{
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
    
    print("Refrehed Successfully!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0), 
        child: AppBar(
          title: Text(
            "CourierMS",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search
              ),
              onPressed: () {

              }
            ),
            IconButton(
              icon: Icon(
                Icons.notifications
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/Notification');
              }
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert
              ),
              onPressed: () {

              }
            ),
          ],
          automaticallyImplyLeading: false,
          elevation: 0.0,
        ),
      ),
      body: Stack(
        children: <Widget>[
          HomePageBackground(
            screenHeight: MediaQuery.of(context).size.height,
          ),
          // SafeArea(
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(height: 8,),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //         child: Row(
          //           children: <Widget>[
          //             Text(
          //               "CourierMS",
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 30,
          //               ),
          //             ),
          //             Spacer(),
          //             Icon(
          //               Icons.search,
          //               color: Colors.white,
          //               size: 30,
          //             ),
          //             SizedBox(width: 20,),
          //             Icon(
          //               Icons.notifications,
          //               color: Colors.white,
          //               size: 30,
          //             ),
          //             SizedBox(width: 20,),
          //             Icon(
          //               Icons.more_vert,
          //               color: Colors.white,
          //               size: 30,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SafeArea(
            child: SmartRefresher(
              enablePullDown: true,
              controller: _refreshController,
              onRefresh: _onRefresh,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        children: <Widget>[
                          InfoBarPage(),
                          QuickButtonsPage(),
                          BranchLocation(),
                          ContentWidget(),
                          BranchLocation(),
                          ContentWidget(),
                          BranchLocation(),
                          ContentWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        index: 2,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.work, size: 30, color: Colors.white),
          Icon(Icons.perm_identity, size: 30, color: Colors.white),
        ],
        color: Colors.deepPurple[900],
        buttonBackgroundColor: Colors.deepPurple[900],
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {

        },
      ),
    );
  }
}