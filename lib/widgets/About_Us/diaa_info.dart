import 'package:flutter/material.dart';

class DiaaInfo extends StatelessWidget {
  const DiaaInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(2), // Border width
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(85), // Image radius
              child:
                  Image.asset('assets/images/IMG_4085.jpg', fit: BoxFit.cover),
            ),
          ),
        ),
        const Text('Diaa Ahmed',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.bold)),
        const Text(
          'FLUTTER DEVELOPER',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Divider(
          color: Colors.white,
          endIndent: 60,
          indent: 60,
          thickness: 1,
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: 65,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.phone,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "(+20) 1274512587",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: 65,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.mail,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Bekoahmed736@gmail.com",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
