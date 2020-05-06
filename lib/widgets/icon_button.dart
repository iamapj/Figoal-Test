import 'package:figoal/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconButton extends StatelessWidget {
  final String svg;
  final VoidCallback onPressed;
  final int count;

  const AppIconButton({
    Key key,
    @required this.svg,
    @required this.onPressed,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = Container(
      decoration: BoxDecoration(
        color: orange_color,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 40,
      width: 40,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset('assets/svg/$svg.svg'),
        onPressed: () {},
      ),
    );

    if (count == null) return button;

    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        button,
        Positioned(
          right: -5,
          top: -9,
          child: Container(
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            padding: EdgeInsets.all(6),
            child: Text(
              '$count',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
