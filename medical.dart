import 'dart:ui';
import 'package:alluidesign/component.dart';
import 'package:alluidesign/utill.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  final List _circle=[
    'assets/icon/heart rate.png',
    'assets/icon/Dentist.png',
    'assets/icon/Pil.png',
    'assets/icon/pregnant.png'
  ];


  bool _istab=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFF),
        body: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          height: 300,
          // margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
            color: Color(0xff66B2FF),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 40, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hi, Steven', style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
                    Container(
                      height: 50, width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue.shade100,
                      ),
                      margin: EdgeInsets.all(5),
                      child: Badge(
                        badgeColor: Colors.red,
                        position: BadgePosition.topEnd(top: 10, end: 13),
                        child: ImageIcon(
                            AssetImage('assets/icon/Notification.png')),
                      ),
                    )
                  ],
                ),
                const Text('Lets find\nyour top doctor! ',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
            height,
            smallheight,
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.search_outlined,size: 30),
                hintText: "Search Here...",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                filled: true,
                fillColor: Colors.white,
              ),
            )
              ],
            ),
          ),
        ),
        height,
        Padding(
          padding: const EdgeInsets.fromLTRB(20,5,20,20,),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Categories', style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.w600)),
            mediumheight,
            SizedBox(height: 70,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                  itemCount:_circle.length ,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                       child: Container(height: 70,width: 70,
                          decoration: BoxDecoration(
                              color: _istab?Colors.blue:Colors.lightBlueAccent.shade100,
                              shape: BoxShape.circle),
                          child:Image.asset(_circle.elementAt(index), height: 17,) ,

                        ),
                      ),
                    );
                  }, ),
            ),
              height,
              Text('Doctors', style: GoogleFonts.aBeeZee(fontSize: 25,fontWeight: FontWeight.w600)),
              // smallheight,
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount:doctor.length ,
                itemBuilder: (context,index){
                  return GestureDetector(
                    // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => details(doctor[index]))),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:ListTile(
                            leading: Container(
                              // width: 50,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orangeAccent.shade100,),
                              child: Image.asset(doctor.elementAt(index)["image"],),
                            ),
                            title: Text(doctor.elementAt(index)["title"],style: TextStyle(fontWeight: FontWeight.w700)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(doctor.elementAt(index)["subtitle"],style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14)),
                                mediumheight,
                                Row(
                                  children: [
                                  Image.asset(doctor.elementAt(index)["icon"],),smallheight,
                                  Text(doctor.elementAt(index)["point"],style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14)),
                                ],)
                              ],
                            ),
                          )
                        ),
                      ),
                    ),
                  );

                },),



          ],),
        )

      ]),
    ));
  }
}
