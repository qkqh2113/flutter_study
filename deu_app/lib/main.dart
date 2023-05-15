import 'package:flutter/material.dart';
import 'package:deu_app/MobileIDPage.dart';
import 'DPayPage.dart';
import 'DFoodPage.dart';
import 'Setting.dart';
import 'Sit.dart';
import 'package:deu_app/SchoolInfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("동의ID")),
        leading: Image.asset('assets/images/deu.png'),
      ),
      endDrawer: Drawer(),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 450,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/me.jpg',
                        width: 200, height: 200),
                    SizedBox(width: 30),
                    Image.asset('assets/images/qr.jpg',
                        width: 200, height: 200),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  height: 0,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(height: 20),
                Text(
                  "20171148 이창헌           E비즈니스학과",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 450,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: GridView.count(
              crossAxisCount: 3,
              // 칸 수
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 0,
              // 아이템들의 수직 간격
              crossAxisSpacing: 20,
              // 아이템들의 수평 간격

              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // 다른 페이지로 이동하는 코드 작성
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SchoolInfo()),
                        );
                      },
                      child: Column(
                        children: [
                          Icon(Icons.school, color: Colors.black),
                          SizedBox(height: 10),
                          Text(
                            '학사안내',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.menu_book, color: Colors.black),
                    SizedBox(height: 10),
                    Text(
                      '도서관',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                // 다른 아이콘 추가 가능
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_scanner, color: Colors.black),
                    SizedBox(height: 10),
                    Text(
                      '공결확인',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bed, color: Colors.black),
                    SizedBox(height: 10),
                    Text(
                      '기숙사',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                // 다른 아이콘 추가 가능
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restaurant_menu, color: Colors.black),
                    SizedBox(height: 10),
                    Text(
                      '학식',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone_iphone, color: Colors.black),
                  label: "모바일ID"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_menu, color: Colors.black),
                  label: "D-Food"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet, color: Colors.black),
                  label: "D-Pay"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book, color: Colors.black),
                  label: "좌석배정"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, color: Colors.black),
                  label: "환경설정"),
            ],
            onTap: (int pageIndex) {
              switch (pageIndex) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MobileIDPage()),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DFoodPage()),
                  );

                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DPayPage()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sit()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                  break;
              }
            },
          )
        ],
      ),
    );
  }
}
