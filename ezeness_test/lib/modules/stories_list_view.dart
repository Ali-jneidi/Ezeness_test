import 'package:flutter/material.dart';
import '../models/UserModel.dart';

class Stories extends StatelessWidget {
  Stories({Key? key}) : super(key: key);

  List<UserModel> usersList = [
    UserModel(image: 'assets/images/story1.jpeg', userName: '@ali'),
    UserModel(image: 'assets/images/story2.jpeg', userName: '@may'),
    UserModel(image: 'assets/images/story3.jpeg', userName: '@ahmad'),
    UserModel(image: 'assets/images/story4.jpeg', userName: '@rana'),
    UserModel(image: 'assets/images/story5.jpeg', userName: '@lana'),
    UserModel(image: 'assets/images/story6.jpeg', userName: '@rama'),
  ];

  ScrollController control = ScrollController();

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return  Scrollbar(
          //isAlwaysShown: true,
          thickness: 2,
          controller: control,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 120.0,
            child: ListView.builder(
              controller: control,
              itemCount: usersList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    storyWidget(usersList[index]),
                    const SizedBox(width: 10),
                  ],
                );
              },
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
            ),
          ),
        );
  }
}

Column storyWidget(UserModel user) {
  Color storyBackGroundColor = const Color(0xfffec4ca);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor: storyBackGroundColor,
        radius: 45,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40,
          //   backgroundImage:  NetworkImage(user.image)
          // backgroundImage:  AssetImage(user.image)

          backgroundImage: AssetImage(user.image),
        ),
      ),
      const SizedBox(height: 8.0,),
      Text(user.userName)
    ],
  );
}