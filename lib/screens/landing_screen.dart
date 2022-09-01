import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_info.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/widgets/double_text.dart';
import 'package:ticket/widgets/hotel_card.dart';
import 'package:ticket/widgets/ticket_card.dart';

import '../utils/app_styles.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          /* Header, Search bar */
          Container(
            // padding: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                /* Heading */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        // BoxDecoration is for border radius
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                /* SearchBox */
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFF8FC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          /* Upcomming Flights cards */
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleText(text: 'Upcomming flights'),
          ),
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketCard(ticket: ticket))
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          /* Hotels */
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleText(text: "Hotels"),
          ),
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:
                  hotelList.map((item) => HotelCard(hotel: item)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
