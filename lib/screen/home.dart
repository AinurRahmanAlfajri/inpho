import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navdrawer.dart';
import 'detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController? _pageController;
  int pageINdex = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: pageINdex);
  }

  onPageChanged(int page) {
    setState(() {
      pageINdex = page;
    });
  }

  onPageTap(int page) {
    _pageController!.animateToPage(page,
        duration: Duration(microseconds: 200), curve: Curves.linearToEaseOut);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Information Of Phone'),
      ),
      drawer: NavDrawer(),
      body: PageView(
        onPageChanged: onPageChanged,
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            child: Center(
              child: Text('favorit'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PhoneDetailPage(
                                phoneName: 'Samsung Galaxy S21',
                                imageUrl:
                                    'https://files.refurbed.com/ii/samsung-galaxy-s22-ultra-5g-1646151371.jpg?t=fitdesign&h=600&w=800',
                                specifications: [
                                  'RAM: 8GB',
                                  'Internal Storage: 128GB',
                                  'Screen Size: 6.2 inches',
                                  'Battery Capacity: 4000mAh',
                                  // Tambahkan spesifikasi lainnya sesuai kebutuhan
                                ],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
                              width: 150.0,
                              height: 100.0,
                            ),
                            Text('Samsung Galaxy S21'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Aksi yang akan dilakukan saat tombol ditekan
                          print('Tombol Realme ditekan');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
                              width: 150.0,
                              height: 100.0,
                            ),
                            Text('Realme'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Aksi yang akan dilakukan saat tombol ditekan
                          print('Tombol Xiomi ditekan');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
                              width: 150.0,
                              height: 100.0,
                            ),
                            Text('Xiomi'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Aksi yang akan dilakukan saat tombol ditekan
                          print('Tombol Samsung ditekan');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
                              width: 150.0,
                              height: 100.0,
                            ),
                            Text('Samsung'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Aksi yang akan dilakukan saat tombol ditekan
                          print('Tombol Realme ditekan');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
                              width: 150.0,
                              height: 100.0,
                            ),
                            Text('Realme'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Aksi yang akan dilakukan saat tombol ditekan
                          print('Tombol Xiomi ditekan');
                        },
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/01/22/3450367010.jpg',
                              width: 150.0,
                              height: 100.0,
                            ),
                            Text('Xiomi'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ), // Tambahkan item lainnya sesuai kebutuhan
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () {
                    // Navigasi ke halaman profil pengguna
                  },
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  onTap: () {
                    // Navigasi ke pengaturan notifikasi
                  },
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Privacy & Security'),
                  onTap: () {
                    // Navigasi ke pengaturan privasi dan keamanan
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('App Settings'),
                  onTap: () {
                    // Navigasi ke pengaturan aplikasi
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Account & Integration'),
                  onTap: () {
                    // Navigasi ke pengaturan akun dan integrasi
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help & Support'),
                  onTap: () {
                    // Navigasi ke halaman bantuan dan dukungan
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About App'),
                  onTap: () {
                    // Navigasi ke halaman informasi aplikasi
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
          onTap: onPageTap,
          currentIndex: pageINdex,
          activeColor: Colors.indigo,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.phone_android,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          ]),
    );
  }
}
