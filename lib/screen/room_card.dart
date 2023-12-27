import 'package:flutter/material.dart';
import 'package:smarthome/constants/app_colors.dart';
import 'package:smarthome/model/smart_home_model.dart';
import 'package:smarthome/screen/room_control_screen.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key, required this.roomData});

  final SmartHomeModel roomData;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RoomControlScreen(roomData: roomData),
            ));
      },
      child: Container(
        width: size.width * 0.35,
        height: size.height * 0.5,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 5) +
            const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColor.fgColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(size.width * 0.07),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  AppColor.black.withOpacity(0.2), BlendMode.darken),
              image: AssetImage(roomData.roomImage),
              fit: BoxFit.cover),
        ),
        child: Text(
          roomData.roomName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
