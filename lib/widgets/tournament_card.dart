import 'package:figoal/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TournamentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: purple_color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/fifa.png',
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'FIFA 20 Tournament',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Participants',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    _buildArcAvatar('girl1'),
                    _buildArcAvatar('man1'),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl2.jpg'),
                      radius: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '5 people joined',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                _divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildTitle('Prize', '\$2000'),
                    _buildTitle('Entry', 'Free'),
                  ],
                ),
                _divider(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      color: red_color,
                      textColor: Colors.white,
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: () {},
                      child: Text(
                        'Join',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '7 days left',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        LinearPercentIndicator(
                          width: 120,
                          lineHeight: 12,
                          percent: 0.4,
                          backgroundColor: deep_purple_color,
                          progressColor: blue_color,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArcAvatar(String image) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/$image.jpg'),
          radius: 18,
        ),
        Positioned(
          left: 28,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: purple_color,
                width: 15,
              ),
              shape: BoxShape.circle,
            ),
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(String title, String value) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$title: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Avenir',
            ),
          ),
          TextSpan(
            text: '$value',
            style: TextStyle(
              fontFamily: 'Avenir',
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      color: deep_purple_color,
      thickness: 1.5,
      indent: 3,
      endIndent: 3,
      height: 20,
    );
  }
}
