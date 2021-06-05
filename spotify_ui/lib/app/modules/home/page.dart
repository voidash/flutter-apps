import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_ui/app/modules/home/controller.dart';
import 'package:spotify_ui/core/values/colors.dart';
import 'package:spotify_ui/core/values/pad.dart';

import 'package:spotify_ui/data/dummy/data.dart';
import 'package:spotify_ui/routes/pages.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Row(
                children: [
                  if(MediaQuery.of(context).size.width > 1221)
                   SideBar(),
                  Expanded(
                    child: Container(
                      child: 
                      Column(
                        children: [
                          Stack(
                            children:[
                              GradientDecoration(),
                              MusicDescription(),
                            ]
                          ),
                          Expanded(
                              child: Container(
                                margin:EdgeInsets.all(defaultPadding),
                                child: Scrollbar(
                                isAlwaysShown: true,
                                    child: ListView.builder(
                                    itemCount: lofihiphopPlaylist.songs.length,
                                    itemBuilder: (context,index) {
                                      return Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                         Container(
                                           height: double.infinity,
                                           width: 200,
                                           child: Text(lofihiphopPlaylist.songs[index].title,
                                           overflow: TextOverflow.ellipsis,
                                           ),
                                           ),

                                         Container(
                                           height: double.infinity,
                                           width: 200,
                                           child: Text(lofihiphopPlaylist.songs[index].artist,
                                           overflow: TextOverflow.ellipsis,
                                           )
                                           ),

                                         Container(
                                           height: double.infinity,
                                           width: 50,
                                           child: Text(lofihiphopPlaylist.songs[index].duration,
                                           overflow: TextOverflow.ellipsis,
                                           )

                                           ),

                                         Container(
                                           height: double.infinity,
                                           width: 300,
                                           child: Text(lofihiphopPlaylist.songs[index].album,
                                           overflow: TextOverflow.ellipsis,
                                           ),
                                           ),
                                        ],
                                      ),
                                      margin: EdgeInsets.all(defaultPadding),
                                      width: double.infinity,
                                      height:30,
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(width: 2.0,color: Colors.white30))
                                      ),
                                        );
                                  }),
                                )  
                            ),
                          )
                        ],
                      )
                      , 
                      color: primaryColor,
                    )
                  )
                ],
              ),
            ),
            Container(
              color: blue,
              width: double.infinity,
              height: 70,
            )
          ],
        )
    );
  }
}

class MusicDescription extends StatelessWidget {
  const MusicDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeaderBar(),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Row(
              children: [
                Container(
                  height:250,
                  width: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      NetworkImage(
                        'https://raw.githubusercontent.com/MarcusNg/flutter_spotify_ui/main/assets/lofigirl.jpg',
                    ),
                    fit: BoxFit.cover
                    )
                  ),
                ),
               Expanded(
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(height: 20),
                           Text('PLAYLIST'),
                           Text(lofihiphopPlaylist.name, style: Theme.of(context).textTheme.headline2.copyWith(
                             fontSize: 40
                           )),
                           SizedBox(height:20),
                           Text(lofihiphopPlaylist.description),
                           SizedBox(height:20),
                           Text('Created by ' + lofihiphopPlaylist.creator + '  |  ' +  lofihiphopPlaylist.duration),


                        ],
                      )
                  ),
                ) 
              ],
            )
          )
        ],
      )
    );
  }
}

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height:50,
          child: Row(
            children: [
              RoundedButton(data:Icons.keyboard_arrow_left),
              RoundedButton(data:Icons.keyboard_arrow_right),
            ],
          )
        ),

        Container(
          height: 40,
          padding: EdgeInsets.only(right:20),
          child:Row(
            children: [
              Icon(Icons.supervised_user_circle_rounded),
              SizedBox(width:10),
              Text('Ashish Thapa'),
              SizedBox(width:20),
              Icon(Icons.keyboard_arrow_down),
            ]
          ),
        ),
      ]
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key, this.data
  }) : super(key: key);
  final IconData data;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.black87.withOpacity(0.3),
          shape: BoxShape.circle
        ) ,
        child: InkWell(
          onTap: () {},
          child: Icon(data)
        )
      );
  }
}

class GradientDecoration extends StatelessWidget {
  const GradientDecoration({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            primaryColor
          ]
        )
      )
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Logo(),
          SizedBox(height:40),
           Column(
            children: [
              MainButton(name:'Home',icon:Icons.home),
              MainButton(name:'Search',icon:Icons.search),
              MainButton(name:'Radio',icon:Icons.music_note),
              Container(
                  height: 300,
                  child: Scrollbar(
                  isAlwaysShown: true,
                    child: ListView.builder(
                    itemBuilder: (context,index){
                    return Padding(
                         padding: EdgeInsets.all(defaultPadding),
                         child: InkWell(
                         child: Container(
                        child: Text(yourLibrary[index],style: Theme.of(context).textTheme.headline4),
                      ),
                         ),
                    );
                },
                itemCount: yourLibrary.length,
                ),
                  ),
              )
            ],

          )

        ],
      )
    );
  }
}

class MainButton extends StatefulWidget {
  const MainButton({
    Key key, @required this.name, @required this.icon,
  }) : super(key: key);
  
  final String name;
  final IconData icon;

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  Color color = backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Card(
        child: InkWell(
            splashColor: Colors.green,
            onTap: () { 
                print("something is happening");
                Get.toNamed(Routes.SPLASH);
              },
            onHover: (isHovering) {
                if(isHovering){
                   setState(() {
                     color = primaryColor;
                   }
                   );
                }else{
                   setState(() {
                     color = backgroundColor;
                   }
                   );
                }
            },
            child: ListTile(
            tileColor: color,
            leading: Icon(this.widget.icon,size: 32),
            title: Transform.translate(
                  offset:Offset(20,0),
                      child: Text(
                this.widget.name,
              style:Theme.of(context).textTheme.headline2),
            )
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:defaultPadding,left:defaultPadding),
      height: 80,
      child: Image.network('https://raw.githubusercontent.com/MarcusNg/flutter_spotify_ui/main/assets/spotify_logo.png'),
    );
  }
}