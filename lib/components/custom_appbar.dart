import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, this.title = '', this.leading, this.titleWidget, this.onActionTap, this.rightLeading});

  final String title;
  final Widget? leading;
  final Widget? rightLeading;
  final Widget? titleWidget;
  // final bool showActionIcon;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25 / 2.5),
        child: Stack(
          children: [
            Positioned.fill(
              child: titleWidget == null
                  ? Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    )
                  : Center(
                      child: titleWidget!,
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ??
                    Transform.translate(
                      offset: const Offset(-14, 0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.arrow_back_ios_new_outlined),
                      ),
                    ),
                    // ICON BELAH KANAN //
                // if (showActionIcon)
                //   Transform.translate(
                //     offset: const Offset(10, 0),
                //     child: GestureDetector(
                //       onTap: onMenuActionTap,
                //       child: const Padding(
                //         padding: EdgeInsets.all(10.0),
                //         child: Icon(Icons.menu_outlined, color: headingColor,),
                //       ),
                //     ),
                //   )
                  GestureDetector(
                    onTap: onActionTap,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: rightLeading,
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
