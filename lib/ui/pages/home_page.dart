import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/img_profile.png'))
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/img_destination1.png',
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/img_destination2.png',
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/img_destination3.png',
              ),
              DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/img_destination4.png',
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/img_destination5.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
       child: Column(
         children: [
           Text(
             'New This Year',
             style: blackTextStyle.copyWith(
               fontSize: 18,
               fontWeight: semiBold,
             ),
           ),
           DestinationTile(),
         ],
       ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ]
    );
  }
}