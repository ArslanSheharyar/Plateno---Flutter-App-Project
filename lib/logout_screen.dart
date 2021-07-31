import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_liquid_swipe_project/login_and_signup/Methods.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color iconColor = Color(0xFF7F7689);
    return Material(
      child: Container(
        color: Color(0xfff7f7f7),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Image.asset(
                  "assets/thankyou2.png",
                  width: 300.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Need Any Help? Wanna Discuss Anything? Feel Free To\n Contact Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7F7689),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      //color: Colors.grey[400],
                      color: Color(0xFF7F7689),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color(0xFF7F7689),
                      ),
                      title: Text(
                        'support@abc.com',
                        style: TextStyle(
                          color: Color(0xFF7F7689),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                        ),
                      ),
                      onTap: null,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      //color: Colors.grey[400],
                      color: Color(0xFF7F7689),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.perm_phone_msg_rounded,
                        color: Color(0xFF7F7689),
                      ),
                      title: Text(
                        '+92 301 7394600',
                        style: TextStyle(
                          color: Color(0xFF7F7689),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                        ),
                      ),
                      onTap: null,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                    color: iconColor,
                  ),
                  SizedBox(width: 15.0),
                  Icon(
                    FontAwesomeIcons.instagram,
                    size: 30,
                    color: iconColor,
                  ),
                  SizedBox(width: 15.0),
                  Icon(
                    FontAwesomeIcons.twitter,
                    size: 30,
                    color: iconColor,
                  ),
                  SizedBox(width: 15.0),
                  Icon(
                    FontAwesomeIcons.pinterest,
                    size: 30,
                    color: iconColor,
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF7F7689)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 40.0)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 16))),
                child: Text('Logout'),
                onPressed: () => logOut(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
