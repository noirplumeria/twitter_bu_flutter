import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Tweet.dart';

void main() {
  runApp(const MyApp());
}

int num = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    const Tweet(
      avatar_url: '',
      postText: 'นี่จะเป็นการเริ่มการแนะนำตัวของผม : )',
    ),
    const Tweet(
      avatar_url: 'https://i.imgur.com/phsCAwE.jpeg',
      postText: 'สวัสดีครับ..ผมชื่อ นายสิทธิโชค ปั้นเปี่ยมทอง',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i0.wp.com/www.followchain.org/wp-content/uploads/2021/09/best-discord-profile-pictures-7.png?resize=256%2C256&ssl=1'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildiconbutton(Icons.home, Colors.blue),
            buildiconbutton(Icons.search_outlined, Colors.blue),
            buildiconbutton(Icons.notifications_outlined, Colors.blue),
            buildiconbutton(Icons.email_outlined, Colors.blue),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (num == 0) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316364701_809627943633292_1406181706417906893_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=ae9488&_nc_ohc=7ZRK7YmoKkQAX-8GNoC&tn=zgvhBcLrcEZAK_Dr&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdR0LuNvSJ6wvrSWNzZFh70fHyLYOvgvL0f_2Rf0VODZew&oe=63A423A1',
                  postText: 'งานแรกวิชาเขียนแบบ',
                ),
              );
            } else if (num == 1) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316429245_546704497281722_6668309482629564256_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=ae9488&_nc_ohc=O2QdCnAZrZ4AX9JW8r3&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdSGzF4v6y0MNrtnP7CPapgK3TXy_fsGZ7DRm73qYCt3Mg&oe=63A42B26',
                  postText: '',
                ),
              );
            } else if (num == 2) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316139191_653669349741260_1082967057681822990_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_ohc=uXPkdf_xNZcAX-aMu31&tn=zgvhBcLrcEZAK_Dr&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdTSsRcTvkHJZhkPfRlK6wQyzKMJe64-mtHRLyzqVG0O_w&oe=63A419F3',
                  postText: 'ภาพตอนออกแบบโครง',
                ),
              );
            } else if (num == 3) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/127762167_3671511102908401_2420412686484865980_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_ohc=X9fYFW8MQo4AX-8epHf&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdRC1UJFBPOMVP_Y_UIL7-uU0VyYrPD83zQdthbWCfXfAQ&oe=63A41AA5',
                  postText: 'งานที่ 2 วิชา DIGITAL ',
                ),
              );
            } else if (num == 4) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316256980_6063023777042277_517888497810114585_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=0J3JSEf29EUAX_R0ATd&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdSsnB835l7CQtoqR6wzLLSeLyzlwWccWaDHqTF58MlqDQ&oe=63A4344D',
                  postText: '',
                ),
              );
            } else if (num == 5) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316451742_2050739185118053_3857106454954383701_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=7V33BcfCMgEAX8CDsTo&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdSP3tdmVmUhrcv03TGoAELr5PF9FW0yH91DcFDhjYnUnw&oe=63A439AC',
                  postText: '',
                ),
              );
            } else if (num == 6) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316621960_718514033041620_4125856163877958090_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=FEXLH0A9UpwAX_iI2Yr&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdSynowl1-hfNEvJxNfHOEVdyl_bmUMi55_aHeJDSM6WpQ&oe=63A4369F',
                  postText: '',
                ),
              );
            } else if (num == 7) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url: '',
                  postText: 'ฝึกงาน',
                ),
              );
            } else if (num == 8) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/297720564_1459712854546650_3724049185930940570_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ae9488&_nc_ohc=fjr939uEyVgAX-RFrn_&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdSJEn8sMVDQ82-6oRvyGcxzM97cFHKsz800A5vlTQp7nA&oe=63A41296',
                  postText: '',
                ),
              );
            } else if (num == 9) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/296401606_1001247497220109_7465108492255258065_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_ohc=nbB9BggUHOgAX_vHqp0&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdR-8rKyJUQhjbRzsY8f5EMwk8MQ-EKHSMyrQjFJypx4DA&oe=63A43ED7',
                  postText: '',
                ),
              );
            } else if (num == 10) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url:
                      'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.15752-9/316229119_433591955636325_92463963169547027_n.png?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_ohc=9oB2Ud-Rq2kAX-G7azE&_nc_ht=scontent.fbkk28-1.fna&oh=03_AdSImqM4WxZktcBl5UDCGTyNpP_10TOYgG2e_WUajVrsQw&oe=63A41CEE',
                  postText: 'โปรเจคที่กำลังทำ...',
                ),
              );
            } else if (num == 11) {
              tweetList.insert(
                0,
                const Tweet(
                  avatar_url: '',
                  postText: 'ประมาณนี้ครับ ขอบคุณครับ',
                ),
              );
            } else {
              num = -1;
            }
            num++;
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetList[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetList.length),
    );
  }

  Widget buildiconbutton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
