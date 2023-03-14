
import 'dart:ui';

import 'package:alluidesign/component.dart';
import 'package:alluidesign/utill.dart';
import 'package:date_time_picker_widget/date_time_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class details extends StatefulWidget {

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  Color _color = Colors.blue;
    String ?_d1, _d2;
   String? _t1, _t2;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: _color,
        accentColor: _color,
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: [
                    Center(
                      child: IconButton(onPressed: () {

                      }, icon: Icon(Icons.arrow_back_ios)),
                    ),
                    SizedBox(width: 70,),

                    Text('Detail Doctor',style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18),)
                  ],),
                  height,

                  ListTile(
                    leading: Container(
                      // width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orangeAccent.shade100,),
                      child: Image.asset('assets/image/Frame1.png'),
                    ),
                    title: Text('Dr. Jenny Wilson', style: TextStyle(fontWeight: FontWeight.w700)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dental Suren',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14)),
                        Row(
                          children: [
                            Image.asset('assets/icon/Star.png'),smallheight,
                            Text('4.8',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14)),
                          ],)
                      ],
                    ),
                  ),
                  height,
                  Text('Biography',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 14)),
        mediumheight,

        const ReadMoreText(
          ' Dr. Jenny Wilson (Implantologist),  is a Dentist inAmerica, she has 20 years of Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
          trimLines: 2,
          colorClickableText: Colors.blue,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read More',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),


                  const SizedBox(height: 24),
                  const Divider(),
                  _datePicker(),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 24),
                  _timePicker(),
                  const SizedBox(height: 50),
                  _Button(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _datePicker() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        DateTimePicker(
          type: DateTimePickerType.Date,
          onDateChanged: (date) {
            setState(() {
              _d2 = DateFormat('dd MMM, yyyy').format(date);
            });
          },
        )
      ],
    );
  }

  Widget _timePicker() {
    return DateTimePicker(
      type: DateTimePickerType.Time,
      timeInterval: const Duration(minutes: 30),
      onTimeChanged: (time) {
        setState(() {
          _t2 = DateFormat('hh:mm:ss aa').format(time);
        });
      },
    );
  }

  Widget _Button(){
    return     InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          height: 40,width: 180,
          decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(30)),
          child: const Center(child: Text('Book Appointment',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))),
        ),
      ),
    );
  }


}