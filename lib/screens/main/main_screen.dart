




import 'package:flutter/material.dart';
import 'package:uiweb/components/side_menu.dart';
import 'package:uiweb/responsive.dart';
import 'package:uiweb/screens/main/components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size;
    return Scaffold(

      body: Responsive(
        mobile: 
        ListOfEmails(),



        tablet: 

         Row(
        children: [
          Expanded(
            flex: 6,
            child: 
            ListOfEmails()
            ),


          Expanded(
            flex: 9,
            child: 
            Container(color: Colors.blue,)
            // EmailScreen()
            ),

        ],),
        




        desktop:  Row(
        children: [
          Expanded(
            flex: _size.width > 1340 ? 2: 4,
            child: 
            SideMenu()
            ),


          Expanded(
            flex: _size.width > 1340 ? 3 : 5,
            child: ListOfEmails()
            ),

          Expanded(
            flex: _size.width > 1340 ? 8 : 10,
            child: 
            Container(color: Colors.blue,)
            // EmailScreen()
            ),
        ],),
        )
    );
  }
}



