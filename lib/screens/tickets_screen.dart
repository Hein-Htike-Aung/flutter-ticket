import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_info.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/widgets/column_layout.dart';
import 'package:ticket/widgets/dots.dart';
import 'package:ticket/widgets/ticket_card.dart';

import '../utils/app_styles.dart';
import '../widgets/two_tabs.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(30)),
              /* Title */
              Text("Tickets", style: Styles.headLineStyle1),
              Gap(AppLayout.getHeight(15)),
              /* Tabs */
              const TwoTabs(tab1: 'Upcomming', tab2: 'Previous'),
              Gap(AppLayout.getHeight(15)),
              /* Ticket Details */
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                child: TicketCard(ticket: ticketList[0], isWhite: true),
              ),
              const SizedBox(height: 1),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                        ),
                        ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: "5331 232342",
                          secondText: "Passport",
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Dots(
                      sections: 15,
                      isWhiteBg: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: "43984n45",
                          secondText: "Number of E ticket",
                        ),
                        ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: "B2SG28",
                          secondText: "Booking Code",
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Dots(
                      sections: 15,
                      isWhiteBg: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png',
                                    scale: 11),
                                Text(
                                  " *** 2462",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: "\$249.99",
                          secondText: "Price",
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Dots(
                      sections: 15,
                      isWhiteBg: false,
                      width: 5,
                    ),
                  ],
                ),
              ),
              /* Barcode */
              // ClipRRect create a rounded rectangle clip
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(20),
                    right: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: "https://github.com/Hein-Htike-Aung",
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 60,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              /* Ticket */
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                child: TicketCard(
                  ticket: ticketList[0],
                  isSingle: true,
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(250),
            child: Container(
              padding: const EdgeInsets.all(3),
              // outer circle
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              // inner circle
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(250),
            child: Container(
              padding: const EdgeInsets.all(3),
              // outer circle
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              // inner circle
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
