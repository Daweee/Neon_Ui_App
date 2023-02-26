import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_ui_design/MaskImage.dart';

import '../constants.dart';
import 'HomePage.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0XFF19191B),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/movieBgImage.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                        child: SvgPicture.asset(kBackIcon),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      child: SvgPicture.asset(kMenuIcon),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 9,
              top: screenHeight * 0.42,
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFE53BB),
                      Color(0XFF09FBD3),
                    ],
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFF3E4348),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.56,
                transform:
                    Matrix4.translationValues(0, -screenHeight * 0.05, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.7,
                      child: Column(
                        children: [
                          Text(
                            "Eternals",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white.withOpacity(0.85),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight <= 667 ? 10 : 20,
                          ),
                          Text(
                            "2021•Action-Adventure-Fantasy•2hr36m",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white.withOpacity(0.85),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RatingBar.builder(
                            itemSize: 14,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating) {
                              debugPrint(rating.toString());
                            },
                            unratedColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.",
                            textAlign: TextAlign.center,
                            maxLines: screenHeight <= 667 ? 2 : 4,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      height: 2,
                      width: screenWidth * 0.8,
                      color: Colors.white.withOpacity(0.15),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                "Casts",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight <= 667 ? 10 : 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 375 ? 24 : 30,
                                backgroundImage: const AssetImage(kActressOne),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 112,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const MaskedImage(
                                        asset: kCastMask,
                                        mask: kCastMask,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Angeline\nJolie",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 375 ? 24 : 30,
                                backgroundImage: const AssetImage(kActressTwo),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 112,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const MaskedImage(
                                        asset: kCastMask,
                                        mask: kCastMask,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Gemma\nChan",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 375 ? 24 : 30,
                                backgroundImage:
                                    const AssetImage(kActressThree),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 112,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const MaskedImage(
                                        asset: kCastMask,
                                        mask: kCastMask,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Salma\nHayek",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 375 ? 24 : 30,
                                backgroundImage: const AssetImage(kActorOne),
                              ),
                              Expanded(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 112,
                                  ),
                                  transform:
                                      Matrix4.translationValues(-6, 0, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const MaskedImage(
                                        asset: kCastMask,
                                        mask: kCastMask,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Richard\nMadden",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
