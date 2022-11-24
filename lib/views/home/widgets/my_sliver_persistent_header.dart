import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/home/widgets/icons_appbar.dart';

import '../../../services/drawer_service.dart';
import '../home_controller.dart';

class MySliverPersistentHeader extends SliverPersistentHeaderDelegate {
  final double _maxExtent = 100;
  final double _minExtent = 60;
  final double _maxPositionLeftTitle = Get.width * .25;
  final double _minPositionTitle = 1;
  final double _maxPositionTopTitle = 50;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxExtent;
    final positionLeftTitle = _maxPositionLeftTitle -
        (_maxPositionLeftTitle * (1 - percent))
            .clamp(_minPositionTitle, _maxPositionLeftTitle);
    final positionTopTitle = (_maxPositionTopTitle * (1 - percent))
        .clamp(_minPositionTitle, _maxPositionTopTitle);
    return Container(
      color: const Color(
        0xff1C3361,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 1,
            child: IconButton(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.sort,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () => DrawerService.openDrawer(),
            ),
          ),
          Positioned(
            top: positionTopTitle,
            left: positionLeftTitle,
            child: GetBuilder<HomeController>(
              id: 'homeTitle',
              builder: (controller) {
                return Text(
                  controller.homeTitle,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF3C981),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 1,
            right: 0,
            child: GetBuilder<HomeController>(
              id: 'homeTitle',
              builder: (controller) {
                return IconsAppBar(
                  indexView: controller.indexView,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _maxExtent;

  @override
  // TODO: implement minExtent
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
