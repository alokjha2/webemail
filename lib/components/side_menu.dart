



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uiweb/components/side_menu_item.dart';
import 'package:uiweb/components/tags.dart';
import 'package:uiweb/constants.dart';
import 'package:uiweb/extension.dart';
import 'package:uiweb/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? KdefaultPadding : 0),
      color: KBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: KdefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  // Image.asset(
                  //   "assets/images/Logo Outlook.png",
                  //   width: 46,
                  // ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: KdefaultPadding),

              ElevatedButton.icon(onPressed: (){}, icon:  WebsafeSvg.asset("assets/icons/Edit.svg", width: 16), label:  Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),

              SizedBox(height: KdefaultPadding),
              ElevatedButton.icon(onPressed: (){}, icon:   WebsafeSvg.asset("assets/icons/Download.svg", width: 16), label: Text(
                  "Get messages",
                  style: TextStyle(color: KTextColor),
                ),
              ).addNeumorphism(),
              SizedBox(height: KdefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconSrc: "assets/icons/Inbox.svg",
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                
                itemCount: 1,
                press: () {},
                title: "Sent",
                iconSrc: "assets/icons/Send.svg",
                isActive: false,
              ),
              SideMenuItem(
                
                itemCount: 1,
                press: () {},
                title: "Drafts",
                iconSrc: "assets/icons/File.svg",
                isActive: false,
              ),
              SideMenuItem(
                itemCount: 1,
                press: () {},
                title: "Deleted",
                iconSrc: "assets/icons/Trash.svg",
                isActive: false,
                showBorder: false,
              ),

              SizedBox(height: KdefaultPadding * 2),
              // Tags
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
