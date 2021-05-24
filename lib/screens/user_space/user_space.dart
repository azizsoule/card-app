import 'package:card_app/controllers/user_space_controllers/user_space_controller.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserSpaceController controller = Get.put(UserSpaceController());
    return Scaffold(
      body: Obx(() => controller.bodies[controller.currentBody.value]),
      floatingActionButton: Obx(
        () => FabCircularMenu(
          fabColor: AppColors.primary,
          fabChild: Icon(
            Icons.menu,
            color: AppColors.secondary,
          ),
          ringColor: AppColors.primary.withOpacity(0.7),
          children: List.generate(
            controller.menuIcons.length,
            (index) => GestureDetector(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: controller.currentBody.value == index
                      ? AppColors.secondary
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  controller.menuIcons[index],
                  color: controller.currentBody.value == index
                      ? AppColors.primary
                      : AppColors.secondary,
                ),
              ),
              onTap: () => controller.onMenuItemTap(index),
            ),
          ),
        ),
      ),
    );
  }
}
