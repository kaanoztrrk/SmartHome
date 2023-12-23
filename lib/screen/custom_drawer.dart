import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarthome/constants/app_colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Drawer(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          )),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColor.fg1Color,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              CupertinoIcons.clear,
                              color: AppColor.white,
                            ));
                      },
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.2,
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://randomuser.me/api/portraits/women/12.jpg")),
                            border: Border.all(width: 2, color: AppColor.white),
                            shape: BoxShape.circle),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Theviacoder",
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: AppColor.white,
                                  side: const BorderSide(color: AppColor.white),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(fontSize: 12),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: AppColor.white,
                  height: 40,
                ),
                drawerTile(Icons.people_alt, "Manage Users", () {}),
                drawerTile(Icons.tv_outlined, "Device", () {}),
                drawerTile(Icons.bed, "Rooms", () {}),
                drawerTile(Icons.music_note, "Music", () {}),
                drawerTile(Icons.settings, "Settings", () {}),
                drawerTile(Icons.help, "Help", () {}),
                const Spacer(),
                drawerTile(Icons.power_settings_new_outlined, "LogOut", () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile drawerTile(IconData iconData, String title, VoidCallback onTap) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 10,
      leading: Icon(iconData, color: AppColor.white),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
