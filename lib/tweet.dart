import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String avatar_url;
  final String postText;
  // ignore: non_constant_identifier_names
  const Tweet({
    super.key,
    required this.avatar_url,
    required this.postText,
  });

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetBody(),
      ],
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          tweetImage(postText),
          tweetButton(),
        ],
      ),
    );
  }

  Widget tweetText(String text) {
    return Text(text);
  }

  Widget tweetImage(String text) {
    if (avatar_url != "") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          const SizedBox(
            height: 10.0,
          ),
          Image(
            width: 400.0,
            image: NetworkImage(avatar_url),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          const SizedBox(
            height: 10.0,
          ),
        ],
      );
    }
  }

  Widget tweetButton() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweeticonButton(FontAwesomeIcons.message, "112k"),
          tweeticonButton(FontAwesomeIcons.retweet, ""),
          tweeticonButton(FontAwesomeIcons.heart, "12K"),
          tweeticonButton(FontAwesomeIcons.share, ""),
        ],
      ),
    );
  }

  Widget tweeticonButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 18.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 5.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget tweetHeader() {
    // ignore: no_leading_underscores_for_local_identifiers
    DateTime _now = DateTime.now();
    var time = ('@NOWHERE ${_now.hour}:${_now.minute}:${_now.second}');
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: const Text(
            "Sittichok panp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          time, //////////////////////////////////////////
          style: const TextStyle(color: Colors.grey),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.anglesDown,
              size: 12.0, color: Colors.grey),
        ),
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i0.wp.com/www.followchain.org/wp-content/uploads/2021/09/best-discord-profile-pictures-7.png?resize=256%2C256&ssl=1'),
          ),
        ],
      ),
    );
  }
}
