import 'package:flutter/material.dart';
import 'package:hedg_task/core/themes/app_colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10).copyWith(right: 0),
        child: const ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xffE6F9EE),
            child: Icon(Icons.person, size: 30, color: AppColors.primaryColor),
          ),
          title: Text("Jacob Smith",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.secondeyColor,
                  fontWeight: FontWeight.w700)),
          subtitle: Text("jacobsmith@example.com",
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
