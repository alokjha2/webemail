


import 'package:flutter/material.dart';
import 'package:uiweb/constants.dart';
import 'package:uiweb/models/Email.dart';
import 'package:uiweb/responsive.dart';
import 'package:uiweb/screens/email/email_screen.dart';
import 'package:uiweb/screens/main/components/email_card.dart';

import '../../../components/side_menu.dart';

class ListOfEmails extends StatefulWidget {
  const ListOfEmails({Key? key}) : super(key: key);

  @override
  State<ListOfEmails> createState() => _ListOfEmailsState();
}

class _ListOfEmailsState extends State<ListOfEmails> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: 
      // here we limit the max width of drawer 
      
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250),
        child: const SideMenu(),
        ),

      body: Container(
        padding: EdgeInsets.all(
          KdefaultPadding),
        color: KBgDarkColor,
        child: SafeArea(
          right: false,
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: KdefaultPadding
                ),
                child: Row(
                  children: [


                    if(!Responsive.isDesktop(context))

                    IconButton(onPressed: (){
                      _scaffoldKey.currentState!.openDrawer();

                    }, icon: Icon(Icons.menu)),

                    if(!Responsive.isDesktop(context))
                    SizedBox(width: 5,),

                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration:  InputDecoration(
                          hintText: "Search",
                          fillColor: KBgLightColor,
                          filled: true,
                    
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            ),
                            borderSide: BorderSide.none,
                            )
                    
                          
                          ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                
                padding: const EdgeInsets.symmetric(
                  horizontal: KdefaultPadding
                ),
                child: Row(
                  children: [
                    Icon(Icons.arrow_drop_down_sharp),
                    SizedBox(width: 5,),

                    Text(
                      "Sort by date",
                      style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),
                      ),

                      Spacer(),

                      MaterialButton(
                        minWidth: 20,
                        child: Icon(Icons.filter_list_rounded),
                        onPressed: (){})
                  ],
                ),
              ),

              SizedBox(height: KdefaultPadding,),

              Expanded(child: ListView.builder(
                itemCount: emails.length,
                itemBuilder: (context, index) => EmailCard(
                  isActive :Responsive.isMobile(context)? false: index == 0,
                  email: emails[index],
                  
                  press: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EmailScreen(email: emails[index])));
                  }
                ) 
                
                ))
            ],
          ),
        ),
          ),
    );
  }
}