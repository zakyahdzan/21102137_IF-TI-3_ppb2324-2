import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '/styles/colors.dart';
import '/styles/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 35,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: kBody1.copyWith(
                              color: kMatterhornBlack,
                            ),
                          ),
                          Text(
                            'Zaky Ahdzan Nirwanda 👏',
                            style: kHeading6.copyWith(
                              color: kMatterhornBlack,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/user-img.png'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kGrey,
                                blurRadius: 5,
                                offset: Offset.fromDirection(2),
                              ),
                            ]),
                      )
                    ],
                  ),
                  const SizedBox(height: 28),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    constraints: const BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg-container.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 5,
                          offset: Offset.fromDirection(2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My savings',
                          style: kSubtitle2.copyWith(color: kWhite),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rp. 10.430.000',
                          style: kHeading5.copyWith(
                            color: kWhite,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhite,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Rp. 10.430.000 / Rp. 40.000.000',
                          style: kCaption.copyWith(
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
               
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.only(top: 200),
            child: DraggableScrollableSheet(builder: (context, ScrollController){
              return Container(
                decoration: BoxDecoration(color: kWhite,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                )
                ),
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 21,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 14 + 4),
                      child: SingleChildScrollView(controller: ScrollController, child: Column(
                        children: [
                          Center(
                            child: Text('Transaction History', style: kHeading6.copyWith(
                              color: kLuckyBlue,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          _transactionList(
                            kTreeGreen.withOpacity(0.2), 
                            'assets/icon/triangle-up.png', 
                            'Succes!', 
                            'February 19 03:25 PM', 
                            '+ 100.000',
                          ),
                          _transactionList(
                            kTreeGreen.withOpacity(0.2), 
                            'assets/icon/triangle-up.png', 
                            'Succes!', 
                            'February 16 01:25 PM', 
                            '+ 150.000',
                          ),
                          _transactionList(
                            kOrange.withOpacity(0.2), 
                            'assets/icon/triangle-down.png', 
                            'Starbuck Drinks', 
                            'February 10 12:25 PM', 
                            '- 110.000',
                          ),
                          _transactionList(
                            kOrange.withOpacity(0.2), 
                            'assets/icon/triangle-down.png', 
                            'Payment #invest', 
                            'February 5 11:05 PM', 
                            '- 130.000',
                          ),
                        ],
                      ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                    ),
                    Container(
                      height: 4,
                      width: 49,
                      color: kEgyptianBlue.withOpacity(0.1),
                    )
                  ],
                ),
              );
            }
            ),
          ),
          ],
        ),
      ),
    );
  }

  Widget _transactionList(Color bgColor, String icon, String title, String sub, String amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: CircleAvatar(backgroundColor: bgColor,
                                child: Image(
                                  image: AssetImage(icon),
                                  width: 14,
                                  ),
                                  ),
                              ),
                              SizedBox(width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(title, 
                                style: kBody1.copyWith(
                                  color: kLuckyBlue),
                                ),
                                Text('sub', 
                                style: kCaption.copyWith(
                                  color: kLightGray),
                                )
                                ],
                              ),
                              Spacer(),
                              Text('amount', style: kBody1.copyWith(
                                color: kLuckyBlue,
            ),
          ),                     
        ],
      ),
    );
  }
}

  


 