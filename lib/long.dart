import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'images/FB_Icon.jpg',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                hintText: 'Địa chỉ email hoặc số điện thoại',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            TextField(
                controller: _password,
                decoration: InputDecoration(
                    hintText: 'Mật khẩu',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ))),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  if (_email.text == _password.text) {
                    Navigator.pushNamed(context, '/mainscreen');
                  } else if (_email.text == '' ||
                      _password.text == '' ||
                      _email.text != _password.text) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Thông Báo'),
                        content:
                            Text('Email hay Password đang bị thiếu hoặc sai'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Tắt'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text(
                  "Đăng nhập",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade300),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.supervisor_account)),
                  Tab(icon: Icon(Icons.notifications)),
                ],
              ),
              title: const Text('Facebook')),
          body: TabBarView(
            children: [
              HomePageTab(),
              Icon(Icons.supervisor_account),
              Icon(Icons.notifications),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage('images/avatar/1.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Khoa Huynh',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                //1
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.groups,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Nhóm',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //2
                ListTile(
                  title: Row(children: [
                    Icon(
                      Icons.bookmark,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Đã lưu',
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //3
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.restore,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Kỷ niệm',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //4
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.security,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Bảo Mật',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //5
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.lock_outline_sharp,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Chính sách & quyền riêng tư',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //6
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cài đặt',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Đăng xuất',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/home');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

class HomePageTab extends StatefulWidget {
  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  Widget _buildButton(IconData icons, String actionName, Color iconColor) {
    return Expanded(
        child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  icons,
                  color: iconColor,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(actionName,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                )
              ],
            )));
  }

  Widget _buildButtonhaha() {
    return Expanded(
        child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage('/images/img_status/haha.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Haha',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                )
              ],
            )));
  }

  Widget _buildButtonlike() {
    return Expanded(
        child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage('/images/img_status/like.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Thích',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                )
              ],
            )));
  }

  Widget _buildButtontim() {
    return Expanded(
        child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage('/images/img_status/tim.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Tim',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                )
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //create avatar
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage('/images/avatar/1.jpg'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        //create text field 'what's on your mind?'
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 25.0),
                                hintText: "Bạn đang nghĩ gì?",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide:
                                      BorderSide(style: BorderStyle.values[1]),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1.0,
                    ),
                    //create a Row of three button
                    Row(
                      children: [
                        _buildButton(Icons.videocam_sharp, 'Phát trực tiếp',
                            Colors.redAccent),
                        _buildButton(Icons.photo_library, 'Ảnh', Colors.green),
                        _buildButton(
                            Icons.video_call, 'Phòng họp mặt', Colors.purple),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            //1
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('/images/avatar/1.jpg'),
                          radius: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Khoa Huynh',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15 phút',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.public,
                                    size: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '...',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Hôm nay là một ngày rất tồi tệ và tui hơi bị quạo',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Image.network('/images/img_status/1.jpg'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: -36,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage(
                                      '/images/img_status/haha.jpg'),
                                ),
                              ),
                              Positioned(
                                  right: -18,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                        '/images/img_status/tim.jpg'),
                                  )),
                              CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    NetworkImage('/images/img_status/like.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text('10'),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(left: 320),
                          child: Text('3 Bình luận'),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        // _buildButton(Icons.thumb_up, "Thích", Colors.blue),
                        _buildButtonlike(),
                        _buildButton(
                            Icons.comment_outlined, "Bình Luận", Colors.black),
                        _buildButton(
                            Icons.share_sharp, "Chia sẻ", Colors.black),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //2
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('/images/avatar/2.jpg'),
                          radius: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Khoi Nguyen',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '1 ngày trước',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.public,
                                    size: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '...',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Image.network('/images/img_status/4.jpg'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: -36,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage(
                                      '/images/img_status/haha.jpg'),
                                ),
                              ),
                              Positioned(
                                  right: -18,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                        '/images/img_status/tim.jpg'),
                                  )),
                              CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    NetworkImage('/images/img_status/like.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text('20'),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(left: 320),
                          child: Text('5 Bình luận'),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        // _buildButton(Icons.thumb_up, "Thích", Colors.blue),
                        _buildButtonhaha(),
                        _buildButton(
                            Icons.comment_outlined, "Bình Luận", Colors.black),
                        _buildButton(
                            Icons.share_sharp, "Chia sẻ", Colors.black),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //3
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('/images/avatar/3.jpg'),
                          radius: 25.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Long Beo',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '11 tháng 11 lúc 19h',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.public,
                                    size: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '...',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'ai làm 1 chút không :))',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.network('/images/img_status/3.jpg'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: -36,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage(
                                      '/images/img_status/haha.jpg'),
                                ),
                              ),
                              Positioned(
                                  right: -18,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                        '/images/img_status/tim.jpg'),
                                  )),
                              CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    NetworkImage('/images/img_status/like.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text('15'),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(left: 310),
                          child: Text('15 Bình luận'),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        // _buildButton(Icons.thumb_up, "Thích", Colors.blue),
                        _buildButtontim(),
                        _buildButton(
                            Icons.comment_outlined, "Bình Luận", Colors.black),
                        _buildButton(
                            Icons.share_sharp, "Chia sẻ", Colors.black),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
