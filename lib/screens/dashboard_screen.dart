import 'package:campus_app/main.dart';
import 'package:campus_app/widgets/screen_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:campus_app/widgets/dashboard_widgets/dashboard_widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: context.responsiveSize(200),
          ),
          SvgPicture.asset("assets/Logo.svg"),
          Container(
            margin: EdgeInsets.only(top: context.responsiveSize(100)),
            child: const FeatureTitle(
              icon: Icons.person,
              title: "Your Standings",
            ),
          ),
          Container(
              margin: EdgeInsets.all(context.responsiveSize(20)),
              height: context.responsiveSize(120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                      child: YourStanding(top: "82%", bottom: "Attendance")),
                  SizedBox(
                    width: context.responsiveSize(20),
                  ),
                  const Expanded(
                    child: YourStanding(top: "180/240", bottom: "Marks"),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: context.responsiveSize(20)),
            child: const FeatureTitle(
                icon: Icons.notifications, title: "Notifications"),
          ),
          Container(
            height: context.responsiveSize(220),
            margin:
                EdgeInsets.symmetric(horizontal: context.responsiveSize(20)),
            child: ListView(
              children: [
                const NotificationTile(
                    title: "Marked absent for environmental science",
                    impact: false),
                SizedBox(
                  height: context.responsiveSize(20),
                ),
                const NotificationTile(
                    title:
                        "You now have 75% attendance in Constitution of India",
                    impact: true)
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(
                  vertical: context.responsiveSize(20),
                  horizontal: context.responsiveSize(20)),
              child: NotificationDrawer(onTap: () {}, isOpened: false)),
          Container(
            margin: EdgeInsets.only(top: context.responsiveSize(20)),
            child: const FeatureTitle(icon: Icons.event, title: "Events"),
          ),
          Container(
            margin: EdgeInsets.all(context.responsiveSize(20)),
            child: EventsCarousel(),
          )
        ],
      ),
    );
  }
}
