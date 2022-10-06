


import 'package:flutter/material.dart';
import 'package:uiweb/constants.dart';
import 'package:uiweb/responsive.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(KdefaultPadding),
      child: Row(children: [

        if(Responsive.isMobile(context))
        BackButton(),
        Icon(Icons.delete_outline_sharp),

        // SizedBox(width: KdefaultPadding /2 ,),
        Icon(Icons.delete_outline_sharp),
        Icon(Icons.delete_outline_sharp),
        Icon(Icons.delete_outline_sharp),


        if(Responsive.isDesktop(context))
        Icon(Icons.delete_outline_sharp),
        Icon(Icons.delete_outline_sharp),
        Icon(Icons.delete_outline_sharp),


      ],),
    );
  }
}