

import 'package:flutter/material.dart';
import 'package:uiweb/constants.dart';
import 'package:uiweb/models/Email.dart';
import 'package:uiweb/screens/email/components/header.dart';
import 'package:websafe_svg/websafe_svg.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key, this.email}) : super(key: key);

  final email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Divider(thickness: 1,),
              Expanded(child: SingleChildScrollView(
                padding: EdgeInsets.all(KdefaultPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundColor: Colors.blue, 
                      backgroundImage: AssetImage(emails[1].image),
                    ),
        
                    SizedBox(width: KdefaultPadding,),
        
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: emails[1].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                          children: [
                                            TextSpan(
                                                text:
                                                    "  <elvia.atkins@gmail.com> to Jerry Torp",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Inspiration for our new home",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: KdefaultPadding / 2),
                                Text(
                                  "Today at 15:32",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            ),
                            SizedBox(height: KdefaultPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 850
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello my love, \n \nSunt architecto voluptatum esse tempora sint nihil minus incidunt nisi. Perspiciatis natus quo unde magnam numquam pariatur amet ut. Perspiciatis ab totam. Ut labore maxime provident. Voluptate ea omnis et ipsum asperiores laborum repellat explicabo fuga. Dolore voluptatem praesentium quis eos laborum dolores cupiditate nemo labore. \n \nLove you, \n\nElvia",
                                      style: TextStyle(
                                        height: 1.5,
                                        color: Color(0xFF4D5875),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: KdefaultPadding),
                                    Row(
                                      children: [
                                        Text(
                                          "6 attachments",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Download All",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        SizedBox(width: KdefaultPadding / 4),
                                        WebsafeSvg.asset(
                                          "assets/icons/Download.svg",
                                          height: 16,
                                          color: KGrayColor,
                                        ),
                                      ],
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: KdefaultPadding / 2),
                                    // SizedBox(
                                    //   height: 200,
                                    //   child: StaggeredGridView.countBuilder(
                                    //     physics: NeverScrollableScrollPhysics(),
                                    //     crossAxisCount: 4,
                                    //     itemCount: 3,
                                    //     itemBuilder:
                                    //         (BuildContext context, int index) =>
                                    //             ClipRRect(
                                    //       borderRadius:
                                    //           BorderRadius.circular(8),
                                    //       child: Image.asset(
                                    //         "assets/images/Img_$index.png",
                                    //         fit: BoxFit.cover,
                                    //       ),
                                    //     ),
                                    //     staggeredTileBuilder: (int index) =>
                                    //         StaggeredTile.count(
                                    //       2,
                                    //       index.isOdd ? 2 : 1,
                                    //     ),
                                    //     mainAxisSpacing: KdefaultPadding,
                                    //     crossAxisSpacing: KdefaultPadding,
                                    //   ),
                                    // )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
