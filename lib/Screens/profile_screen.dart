import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/divider_line.dart';
import '../CustomWidgets/profile_widgets.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/size.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future signOut() async{
    await FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile',style: Theme.of(context).textTheme.titleLarge),
      ),

      /// -- body
      body:  Column(
        children: [
          ListTile(
            leading:   const CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/logos/profile.jpg')),
            title: const Text('Hi, Anis',style: TextStyle(fontSize: 19,color: TColors.darkGrey)),
            subtitle: Text('Welcome to Quick Medical Store',style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.darkGrey.withOpacity(0.9))),
          ),
          SizedBox(height: height *0.03),

          Padding(
            padding: const EdgeInsets.only(left: TSize.defaultSpace),
            child: Column(
              children: [

                /// Profile
                const ProfileWidgets(
                    icon1: Icons.edit,
                    text: 'Edit Profile'),
                SizedBox(height: height *0.01),

                const DividerLine(),

                /// Orders
                const ProfileWidgets(
                    icon1: Icons.list_alt_rounded,
                    text: 'My Orders'),
                SizedBox(height: height *0.01),

                const DividerLine(),

                /// Billing
                const ProfileWidgets(
                    icon1: Icons.alarm_rounded,
                    text: 'Billing'),
                SizedBox(height: height *0.01),

                const DividerLine(),

                /// Faq
                const ProfileWidgets(
                    icon1: Icons.question_mark,
                    text: 'Faq'),
                SizedBox(height: height *0.01),

                const DividerLine(),

                SizedBox(height: height * 0.05),

                SizedBox(
                    width: 250,
                    child: ElevatedButton(onPressed: (() => signOut()),
                      style: ElevatedButton.styleFrom(backgroundColor: TColors.purple),
                      child: const Text('LogOut')))
              ],
            ),
          )

        ],
      ),

    );
  }
}

