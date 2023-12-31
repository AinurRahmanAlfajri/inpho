import 'package:flutter/material.dart';
import 'package:toko/screen/login_screen.dart';
import 'package:toko/screen/posts_screen.dart';
import 'package:toko/screen/register.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';
import '../screen/onboarding_screen/onboarding.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<Auth>(
        builder: ((context, auth, child) {
          if (auth.authenticated) {
            return ListView(
              children: [
                ListTile(
                  title: Text(auth.user?.email ?? ''),
                ),
                ListTile(
                  title: Text('posts'),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => PostsScreen()))),
                ),
                ListTile(
                    title: Text('logout'),
                    onTap: () {
                      Provider.of<Auth>(context, listen: false).logout();
                      Navigator.pop(context);
                    }),
              ],
            );
          } else {
            return ListView(
              children: [
                ListTile(
                    title: Text('register'),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Register())))),
                ListTile(
                  title: Text('Login'),
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LoginScreen())))),
                ),
                ListTile(
                  title: Text('Log Out'),
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => OnboardingScreen())))),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
