import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/groups/groups_controlles.dart';
import 'package:rwallet/views/widgets/listtile_people.dart';

class GroupsView extends StatelessWidget {
  const GroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: GetBuilder<GroupsController>(builder: (controller) {
        return Column(
          children: [
            CupertinoSearchTextField(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
            ListTilePerson(
              onTap: () => controller.goToGroupMenu(),
            ),
            Divider(),
          ],
        );
      }),
    );
  }
}
