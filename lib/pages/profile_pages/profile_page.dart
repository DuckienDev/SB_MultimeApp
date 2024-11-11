import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:strong_body_app/pages/profile_pages/about_profile.dart';
import 'package:strong_body_app/pages/profile_pages/post_profile.dart';
import 'package:strong_body_app/pages/profile_pages/review_profile.dart';
import 'package:strong_body_app/pages/profile_pages/serviecs_profile.dart';
import 'package:strong_body_app/pages/profile_pages/shop_profile.dart';
import 'package:strong_body_app/widgets/button_sb.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image banner
                Image.asset(
                  'assets/profile/BG.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    // image backgroud
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 40.sp,
                            backgroundImage: const AssetImage(
                              'assets/profile/Group 722.png',
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // user info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'Dr. Laura Nguyen',
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Designer',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 280,
                          child: AutoSizeText(
                            'Create professional quality social media posts, invitations, digital postcards.',
                            style: TextStyle(fontSize: 12.sp),
                            maxLines: 2,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_pin, color: Colors.red),
                            Text('Ha Noi'),
                            SizedBox(width: 10),
                            Icon(Icons.chat_bubble_outline, color: Colors.blue),
                            Text(' English, Viet Nam'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // button "Contact me"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ButtonSB(
                    onTap: () {},
                    text: 'Contact me',
                    color: const Color(0xffDB1F26),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            // Tab Bar
            const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xffDB1F26),
              tabs: [
                Tab(text: 'Posts'),
                Tab(text: 'My services'),
                Tab(text: 'StrongBody Shop'),
                Tab(text: 'Reviews'),
                Tab(text: 'About'),
              ],
            ),
            //List page
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: [
                  PostProfile(),
                  ServiecsProfile(),
                  ShopProfile(),
                  ReviewProfile(),
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [AboutProfile()],
                  ),
                ],
              ),
            ),
          ],
        ),
        // Nút FloatingActionButton
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          shape: const CircleBorder(),
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 30.sp,
          ),
        ),
      ),
    );
  }
}
