// return Scaffold(
//       appBar: AppBar(
//         title: Text('YWCA Of Bombay'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(top: 30),
//             child: Text(
//               'Initiatives',
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Color(0xff333333),
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'RacingSansOne'),
//             ),
//           ),
//           //

//           Center(
//               child: Container(
//             //padding: EdgeInsets.all(5.0),
//             height: 400,
//             width: 300,
//             child: Column(children: <Widget>[
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context) => Piya()));
//                 },
// //
// //
// //
//                 child: Container(
//                   margin: EdgeInsets.only(top: 50),
//                   padding: EdgeInsets.only(right: 100.0),
//                   width: 300.0,
//                   height: 100.0,
//                   //
//                   child: ClipPath(
//                     child: Container(
//                         width: 300.0,
//                         child: Padding(
//                           padding: EdgeInsets.fromLTRB(10, 20, 50, 20),
//                           child: Text(
//                             "PIYA",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 25,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         // color: Colors.yellow,
//                         decoration:  BoxDecoration(
//                           gradient: LinearGradient(
//                               stops: [0.2, 1],
//                               colors: [Colors.blue[600], Colors.lightBlue[50]]),
//                           borderRadius:  BorderRadius.only(
//                             topLeft:  Radius.circular(20.0),
//                             bottomLeft:  Radius.circular(20.0),
//                           ),
//                         )),
//                     clipper: CustomClipPath(),
//                   ),
//                   //
//                   decoration:  BoxDecoration(
//                     image:  DecorationImage(
//                       image:  AssetImage('assets/images/img1.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius:
//                          BorderRadius.all( Radius.circular(20.0)),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         blurRadius: 2,
//                         offset: Offset(5, 5), //changes position of shadow
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // InkWell(
//               //   onTap: () {
//               //     print("tapped on container 2");
//               //   },
// //
// //
// //
//               Container(
//                 // padding: EdgeInsets.all(5.0),
//                 margin: EdgeInsets.only(top: 10),
//                 padding: EdgeInsets.only(right: 100.0),
//                 width: 300.0,
//                 height: 100.0,
//                 //
//                 //children: [
//                 //   child: ClipPath(
//                 //   child: Container(
//                 //     width: MediaQuery.of(context).size.width,
//                 //     color: Colors.yellow,
//                 //   ),
//                 //   clipper: CustomClipPath(),
//                 // ),
//                 // //

//                 child: ClipPath(
//                   child: Container(
//                       width: 300.0,
//                       child: Padding(
//                         padding: EdgeInsets.fromLTRB(10, 10, 50, 5),
//                         child: Text(
//                           "Asha Kiran Guest House",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       // color: Colors.yellow,
//                       decoration:  BoxDecoration(
//                         gradient: LinearGradient(
//                             stops: [0.2, 1],
//                             colors: [Colors.amber[400], Colors.amber[50]]),
//                         borderRadius:  BorderRadius.only(
//                           topLeft:  Radius.circular(20.0),
//                           bottomLeft:  Radius.circular(20.0),
//                         ),
//                       )),
//                   clipper: CustomClipPath(),
//                 ),
//                 //]
//                 //
//                 decoration:  BoxDecoration(
//                   //color: const Color(0xFFD81B60),
//                   image:  DecorationImage(
//                     image:  AssetImage('assets/images/img2.jpg'),
//                     fit: BoxFit.cover,
//                   ),

//                   borderRadius:  BorderRadius.all( Radius.circular(20.0)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       blurRadius: 2,
//                       offset: Offset(5, 5), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 //margin: EdgeInsets.all(5),
//               ),
//               // InkWell(
//               //   onTap: () {
//               //     print("tapped on container 3");
//               //   },
// //
// //
// //
//               Container(
//                 //padding: EdgeInsets.all(5.0),
//                 margin: EdgeInsets.only(top: 10),
//                 padding: EdgeInsets.only(right: 100.0),
//                 // width: 300.0,
//                 height: 100.0,
//                 //
//                 //
//                 child: ClipPath(
//                   child: Container(
//                     width: 300.0,
//                     child: Padding(
//                       padding: EdgeInsets.fromLTRB(10, 20, 50, 20),
//                       child: Text(
//                         "PASI",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     // color: Colors.yellow,
//                     decoration:  BoxDecoration(
//                       gradient: LinearGradient(
//                           stops: [0.2, 1],
//                           colors: [Colors.pink[300], Colors.orange[300]]),
//                       borderRadius:  BorderRadius.only(
//                         topLeft:  Radius.circular(20.0),
//                         bottomLeft:  Radius.circular(20.0),
//                       ),
//                     ),
//                   ),
//                   clipper: CustomClipPath(),
//                 ),
//                 //
//                 //
//                 // child: Container(
//                 //   width: 150,
//                 //   child: Text(
//                 //     "Nigel",
//                 //     textAlign: TextAlign.center,
//                 //     style: TextStyle(
//                 //       fontSize: 25,
//                 //       color: Colors.white,
//                 //       fontWeight: FontWeight.bold,
//                 //     ),
//                 //   ),
//                 //   // color: Colors.purple,
//                 //   decoration:  BoxDecoration(
//                 //     color: Colors.purple,
//                 //     borderRadius:  BorderRadius.only(
//                 //       topLeft:  Radius.circular(20.0),
//                 //       bottomLeft:  Radius.circular(20.0),
//                 //     ),
//                 //   ),
//                 // ),
//                 decoration:  BoxDecoration(
//                   //color: const Color(0xFFD81B60),
//                   image:  DecorationImage(
//                     image:  AssetImage('assets/images/img3.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius:  BorderRadius.all( Radius.circular(20.0)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       blurRadius: 2,
//                       offset: Offset(5, 5), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 //margin: EdgeInsets.all(5),
//               ),
//             ]),
//           ))
//         ],
//       ),
//     );
