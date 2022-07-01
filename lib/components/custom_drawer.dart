import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/drawer_icon_and_label.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 24.0,
        left: 16.0,
      ),
      color: Colors.green[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundColor: Colors.orange[100],
            ),
            title: const Text(
              "Miroslava Savitskaya",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: const Text(
              "Active status",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              DrawerIconAndLabel(icon: Icons.map, label: "Adoption"),
              SizedBox(
                height: 32.0,
              ),
              DrawerIconAndLabel(icon: Icons.favorite, label: "Donation"),
              SizedBox(
                height: 32.0,
              ),
              DrawerIconAndLabel(icon: Icons.add, label: "Add Pet"),
              SizedBox(
                height: 32.0,
              ),
              DrawerIconAndLabel(icon: Icons.mail, label: "Message"),
              SizedBox(
                height: 32.0,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.settings, color: Colors.white),
              SizedBox(width: 16.0),
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 16.0),
              Text(
                "|",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 16.0),
              Text(
                "Log out",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
