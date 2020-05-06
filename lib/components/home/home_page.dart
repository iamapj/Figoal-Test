import 'package:figoal/config/colors.dart';
import 'package:figoal/widgets/avatar.dart';
import 'package:figoal/widgets/home_title.dart';
import 'package:figoal/widgets/icon_button.dart';
import 'package:figoal/widgets/invitation_card.dart';
import 'package:figoal/widgets/tournament_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final galleryImages = ['field1', 'field1', 'field1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: <Widget>[
                  SafeArea(
                    child: _buildHeader(),
                    bottom: false,
                  ),
                  _buildBody(),
                ],
              ),
            ),
          ),
          SafeArea(
            child: _buildFooter(),
            top: false,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                height: 32,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    AppIconButton(
                      svg: 'pad',
                      count: 2,
                      onPressed: () {},
                    ),
                    SizedBox(width: 25),
                    AppIconButton(
                      svg: 'add',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  AppAvatar(image: 'girl1'),
                  SizedBox(width: 16),
                  Text(
                    'I am available for a friendly',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              FlatButton(
                visualDensity: VisualDensity.compact,
                color: Colors.black,
                textColor: Colors.white,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Text(
                  'Post',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      color: ash_color,
      child: Column(
        children: <Widget>[
          HomeTitle(
            title: 'Broadcast',
            live: 20,
            onPressed: () {},
          ),
          _buildGallery(),
          HomeTitle(
            title: 'Upcoming',
            onPressed: () {},
          ),
          _buildUpcoming(),
          HomeTitle(title: 'Others', onPressed: () {}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InvitationCard(),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton.icon(
            padding: EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 35),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            color: ash_color,
            onPressed: () {},
            icon: SvgPicture.asset('assets/svg/trophy.svg'),
            label: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/plus.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/copy.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/user.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildUser(String name, String image) {
    return Column(
      children: <Widget>[
        AppAvatar(
          image: image,
          height: 43,
        ),
        SizedBox(height: 3),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildGallery() {
    return Container(
      padding: const EdgeInsets.only(top: 28),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: galleryImages
                  .map((image) => Container(
                        margin: const EdgeInsets.only(right: 8, left: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/$image.png',
                            height: 180,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildUser('iamapj', 'girl2'),
                Column(
                  children: <Widget>[
                    Text(
                      'Friendly',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 2),
                      child: Text(
                        'Live',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                _buildUser('MrMoeMusa', 'man1'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpcoming() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: galleryImages
            .map((image) => Container(
                  width: 300,
                  child: TournamentCard(),
                ))
            .toList(),
      ),
    );
  }
}
