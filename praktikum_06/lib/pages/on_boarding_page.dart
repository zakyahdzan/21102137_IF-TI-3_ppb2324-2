import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum_06/styles/color.dart';
import 'package:praktikum_06/styles/text_style.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgColor.withOpacity(0.5),
        child: Column
        (children: [
          SafeArea(
            child: Image(
              image: AssetImage('assets/image/ob-money.png')
              ),
          ),
          SizedBox(height: 30
          ,),
          Container(constraints: BoxConstraints.expand(
            padding: EdgeInsets.all(26),
            height: 300, 
            width: 315
            ),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(20)
                ),
              ),
              child: Column(children: [
                Text(
                  'Welkcome!',
                  style: KHeading5.copyWith(color: kBlack),
                  ),
                  SizedBox(height:15,),
                  Text(
                    'welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income',
                    style: kSubtitle2.copyWith(color: kSuvaGray),
                    textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 70,
                      ),
                    TextButton(onPressed: {}{},
                     child:Text(
                      'Get Started', 
                      style: kButton1.copyWith(color: kWhite),
                      ),
                      style: TextButton.styleFrom(backgroundColor: kBlueRibbon),
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 36,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.all(
                          Radius.circular(10),
                          ) 
                        )
                      )
              ],),
            )  
          ],
        ),
      )
    );
  }
}