/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileFourPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile4.dart";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.commentDots, color: Colors.black54,), onPressed: (){}, ),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.black54,), onPressed: (){},)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200
              ),
              child: Text("Over 8+ years of experience and web development and 5+ years of experience in mobile applications development "),
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10.0),
            _buildSkillRow("Wordpress",0.75),
            SizedBox(height: 5.0),
            _buildSkillRow("Laravel",0.6),
            SizedBox(height: 5.0),
            _buildSkillRow("React JS",0.65),
            SizedBox(height: 5.0),
            _buildSkillRow("Flutter",0.5),
            SizedBox(height: 30.0),
            
            _buildTitle("Experience"),
            _buildExperienceRow(company: "GID Nepal", position: "Wordpress Developer", duration: "2010 - 2012"),
            _buildExperienceRow(company: "Lohani Tech", position: "Laravel Developer", duration: "2012 - 2015"),
            _buildExperienceRow(company: "Popup Bits Pvt. Ltd.", position: "Web Developer", duration: "2015 - 2018"),
            _buildExperienceRow(company: "Popup Bits Pvt. Ltd.", position: "Flutter Developer", duration: "2018 - Current"),

            SizedBox(height: 20.0),
            _buildTitle("Education"),
            SizedBox(height: 5.0),
            _buildExperienceRow(company: "Tribhuvan University, Nepal", position: "B.Sc. Computer Science and Information Technology", duration: "2011 - 2015"),
            _buildExperienceRow(company: "Cambridge University, UK", position: "A Level", duration: "2008 - 2010"),
            _buildExperienceRow(company: "Nepal Board", position: "SLC", duration: "2008"),

            SizedBox(height: 20.0),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(Icons.mail, color: Colors.black54,),
                SizedBox(width: 10.0),
                Text("dlohani48@gmail.com", style: TextStyle(
                  fontSize: 16.0
                ),),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(Icons.phone, color: Colors.black54,),
                SizedBox(width: 10.0),
                Text("+977-9818523107", style: TextStyle(
                  fontSize: 16.0
                ),),
              ],
            ),
            _buildSocialsRow(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              IconButton(
                color: Colors.indigo,  
                icon: Icon(FontAwesomeIcons.facebookF),
                onPressed: (){
                  _launchURL("https://facebook.com/lohanidamodar");
                },
              ),
              SizedBox(width: 5.0),
              IconButton(
                color: Colors.indigo,  
                icon: Icon(FontAwesomeIcons.github),
                onPressed: (){
                  _launchURL("https://github.com/lohanidamodar");
                },
              ),
              SizedBox(width: 5.0),
              IconButton(
                color: Colors.red,  
                icon: Icon(FontAwesomeIcons.youtube),
                onPressed: (){
                  _launchURL("https://youtube.com/c/reactbits");
                },
              ),
              SizedBox(width: 10.0),
            ],
          );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow({String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(FontAwesomeIcons.solidCircle, size: 12.0, color: Colors.black54,),
      ),
      title: Text(company, style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: Text(skill.toUpperCase(), textAlign: TextAlign.right,)),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title.toUpperCase(), style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),),
          Divider(color: Colors.black54,),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(children: <Widget>[
      SizedBox(width: 20.0),
      Container(
        width: 80.0,
        height: 80.0,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 35.0,
            backgroundImage: CachedNetworkImageProvider(avatars[4])))),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Damodar Lohani", style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10.0),
          Text("Full Stack Developer"),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Icon(FontAwesomeIcons.map, size: 12.0, color: Colors.black54,),
              SizedBox(width: 10.0),
              Text("Kathmandu, Nepal", style: TextStyle(
                color: Colors.black54
              ),),
            ],
          ),
        ],
      )
    ],);
  }
}