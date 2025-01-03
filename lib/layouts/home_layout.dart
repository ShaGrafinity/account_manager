import 'dart:math';

import 'package:account_manager/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              children: List.generate(4, (index) {
                return AccountItemWidget(
                  text: [
                    'ShaGrafinity',
                    'Game.ShaGrafinity',
                    'Dev.ShaGrafinity',
                    'Other.ShaGrafinity',
                  ][index % 4],
                  color: normalColor[index % normalColor.length],
                  onTap: () {
                    //
                  },
                );
              }),
            ),
          ),
          AddButtonWidget(
            onTap: () {
              //
            },
          ),
        ],
      ),
    );
  }
}

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withValues(alpha: 0.2),
            )
          ],
        ),
        child: Icon(
          Icons.add_rounded,
          color: context.theme.colorScheme.onSurface,
          size: 28,
        ),
      ),
    );
  }
}

class AccountItemWidget extends StatelessWidget {
  const AccountItemWidget({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
  });

  final String text;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: ((context.mediaQuerySize.width / 2) - 30),
          height: ((context.mediaQuerySize.width / 2) - 30) / 7 * 5,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: HSLColor.fromColor(color).withLightness(0.95).toColor(),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Wrap(
                children: List.generate(5 * 7, (index) {
                  return SizedBox(
                    width: ((context.mediaQuerySize.width / 2) - 30) / 7,
                    height: ((context.mediaQuerySize.width / 2) - 30) / 7,
                    child: Transform.scale(
                      scale: Random().nextDouble() + 0.6,
                      child: Transform.translate(
                        offset: Offset(
                          Random().nextDouble() * 8 - 4,
                          Random().nextDouble() * 8 - 4,
                        ),
                        child: Transform.rotate(
                          angle: -pi / Random().nextDouble() * 365,
                          child: Icon(
                            [
                              Icons.camera_rounded,
                              Icons.laptop_rounded,
                              Icons.shop_rounded,
                              Icons.home_rounded,
                              Icons.timelapse_rounded,
                            ].elementAt(Random().nextInt(5)),
                            color:
                                context.theme.colorScheme.onSurface.withValues(
                              alpha: Random().nextDouble() / 10 + 0.05,
                            ),
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              color,
                              HSLColor.fromColor(color)
                                  .withLightness(0.9)
                                  .toColor()
                            ],
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            text[0],
                            style: context.textTheme.headlineLarge!.copyWith(
                              color: HSLColor.fromColor(color)
                                  .withLightness(0.2)
                                  .toColor(),
                            ),
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        text,
                        style: context.textTheme.titleMedium,
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
