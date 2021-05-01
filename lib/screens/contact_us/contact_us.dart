import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'constants.dart';
import '../../widgets/blue_bubble_design.dart';
import '../../widgets/constants.dart';

double _height;
double _width;

// ignore: must_be_immutable
class ContactUs extends KFDrawerContent {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                // top-left corner intersecting circles design
                MainPageBlueBubbleDesign(),
                Positioned(
                  child: AppBar(
                    centerTitle: true,
                    title: Text(
                      "YWCA Of Bombay",
                      style: TextStyle(
                        fontFamily: 'LilyScriptOne',
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
                PreferredSize(
                  preferredSize: Size.fromHeight(100),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        // Distance from ywca
                        // or else it will overlap
                        SizedBox(height: 70),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyText2,
                            children: [
                              TextSpan(
                                text: 'Contact Us',
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    // title: Text(''),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(10),
                      child: Container(
                        child: TabBar(
                          labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelColor: Colors.black54,
                          labelColor: Colors.black,
                          indicatorColor: secondaryColor,
                          indicatorWeight: 2.5,
                          tabs: [
                            Container(
                              height: 20.0,
                              width: 120.0,
                              child: Tab(text: 'OFFICES'),
                            ),
                            Container(
                              height: 20.0,
                              width: 120.0,
                              child: Tab(text: 'HOSTELS'),
                            ),
                            Container(
                              height: 20.0,
                              width: 120.0,
                              child: Tab(text: 'GUEST HOUSES'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  body: TabBarView(
                    children: <Widget>[
                      officesTab(),
                      hostelsTab(),
                      guestHousesTab(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget centerCard(String title, String address) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffFCA3CC)),
          color: contactUsCardColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: _height * 0.16,
        width: _width * 0.75,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              // text: "ANDHERI \n ",
              text: title,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'CM Sans Serif',
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: address,
                  // ' Asha Kiran,\n 53,J.P. Road,\nAndheri (W)\n Mumbai-400058\n Email:ywcaandheri@rediffmail.com\n Ph:022-26702831 / 022-26702872',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.5,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget officesTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: _height * 0.025,
            horizontal: _width * 0.05,
          ),
          decoration: BoxDecoration(
            color: contactUsBgColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 145.0,
                    width: 210.0,
                    child: Image(
                      image: AssetImage('assets/images/contact_us/office.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.01),
              Center(
                child: Text(
                  'YWCA offices are situated at the following centers',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(height: _height * 0.015),
              centerCard(officeTitles[0], officeAddresses[0]),
              SizedBox(height: _height * 0.015),
              centerCard(officeTitles[1], officeAddresses[1]),
              SizedBox(height: _height * 0.015),
              centerCard(officeTitles[2], officeAddresses[2]),
            ],
          ),
        ),
      ),
    );
  }

  Widget hostelsTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: _height * 0.025,
            horizontal: _width * 0.05,
          ),
          decoration: BoxDecoration(
            color: contactUsBgColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 145.0,
                    width: 210.0,
                    child: Image(
                      image: AssetImage('assets/images/contact_us/hostel.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.01),
              Center(
                child: Text(
                  'YWCA hostels are situated at the following centers',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(height: _height * 0.015),
              centerCard(hostelTitles[0], hostelAddresses[0]),
              SizedBox(height: _height * 0.015),
              centerCard(hostelTitles[1], hostelAddresses[1]),
              SizedBox(height: _height * 0.015),
              centerCard(hostelTitles[2], hostelAddresses[2]),
            ],
          ),
        ),
      ),
    );
  }

  Widget guestHousesTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: _height * 0.025,
            horizontal: _width * 0.05,
          ),
          decoration: BoxDecoration(
            color: contactUsBgColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 145.0,
                    width: 210.0,
                    child: Image(
                      image: AssetImage('assets/images/contact_us/office.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.01),
              Center(
                child: Text(
                  'YWCA guest houses are situated at the following centers',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(height: _height * 0.015),
              centerCard(guestHouseTitles[0], guestHouseAddresses[0]),
              SizedBox(height: _height * 0.015),
              centerCard(guestHouseTitles[1], guestHouseAddresses[1]),
            ],
          ),
        ),
      ),
    );
  }
}
