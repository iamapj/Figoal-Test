import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final int live;

  const HomeTitle({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.live,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 16,
        bottom: 16,
        right: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: <Widget>[
              if (live != null) ...[
                SvgPicture.asset('assets/svg/live.svg'),
                SizedBox(width: 8),
                Text(
                  '$live Live',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
              IconButton(
                icon: Icon(Icons.keyboard_arrow_right),
                onPressed: onPressed,
              )
            ],
          ),
        ],
      ),
    );
  }
}
