


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uiweb/constants.dart';
import 'package:uiweb/extension.dart';
import 'package:uiweb/models/Email.dart';
import 'package:websafe_svg/websafe_svg.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    Key? key,

    this.isActive = true,
    required this.email,
    required this.press
    
    }) : super(key: key);

    final bool isActive;
    final Email email;
    final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: KdefaultPadding, vertical: KdefaultPadding / 2),
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(KdefaultPadding),
              decoration: BoxDecoration(
                color: isActive ? KPrimaryColor : KBgDarkColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(email.image),
                        ),
                      ),
                      SizedBox(width: KdefaultPadding / 2),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "${email.name} \n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isActive ? Colors.white : KTextColor,
                            ),
                            children: [
                              TextSpan(
                                text: email.subject,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color:
                                          isActive ? Colors.white : KTextColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            email.time,
                            style: Theme.of(context).textTheme.caption!.copyWith(
                                  color: isActive ? Colors.white70 : null,
                                ),
                          ),
                          SizedBox(height: 5),
                          if (email.isAttachmentAvailable)
                            WebsafeSvg.asset(
                              "assets/icons/Paperclip.svg",
                              color: isActive ? Colors.white70 : KGrayColor,
                            )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: KdefaultPadding / 2),
                  Text(
                    email.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          height: 1.5,
                          color: isActive ? Colors.white70 : null,
                        ),
                  )
                ],
              ),
            ).addNeumorphism(
              blurRadius: 15,
              borderRadius: 15,
              offset: Offset(5, 5),
              topShadowColor: Colors.white60,
              bottomShadowColor: Color(0xFF234395).withOpacity(0.15),
            ),
            if (!email.isChecked)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: KBadgeColor,
                  ),
                ).addNeumorphism(
                  blurRadius: 4,
                  borderRadius: 8,
                  offset: Offset(2, 2),
                ),
              ),
            // if (email.tagColor != null)
              Positioned(
                left: 8,
                top: 0,
                child: WebsafeSvg.asset(
                  "assets/icons/Markup filled.svg",
                  height: 18,
                  // color: email.tagColor,
                ),
              )
          ],
        ),
      ),
    );
  }
}
