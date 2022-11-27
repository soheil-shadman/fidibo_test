import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fidibo_project/constants.dart';
import 'package:fidibo_project/models/StateManager.dart';
import 'package:fidibo_project/utils/random-image-giver.dart';
import 'package:fidibo_project/widgets/componenets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //[Serialized Fields]
  //[Header("Inputs")
  static int frameInterval = 100;
  static int speed = 10;

  //[Header("Private Fields")

  StateManager? _stateManager;

  //Base URL
  String _imageURL =
      "https://i.picsum.photos/id/870/200/300.jpg?blur=2&grayscale&hmac=ujRymp644uYVjdKJM7kyLDSsrqNSMVRPnGU99cKl6Vs";
  Timer? _updateTimer;
  double _imageHeight = 100;
  double _imageWidth = 100;

  //[Header("Animations")
  late RiveAnimationController _controller;

  bool get isPlaying => _controller.isActive;

  //[Header("Engine")
  var _x = .0, _y = .0, _dx = 1, _dy = 1;

  @override
  void initState() {
    super.initState();
    _stateManager = StateManager();
    _controller = SimpleAnimation('idle');
    _scheduleUpdate();
  }

  void _scheduleUpdate() {
    _updateTimer = Timer(
      Duration(milliseconds: frameInterval),
      _update,
    );
  }

  void _update() {
    if (_stateManager!.GetStartingState()) {
      final availableSize =
          (context.findRenderObject() as RenderBox).constraints;
      if (_stateManager?.GetChange() == Status.right) {
        _dx = 1;
      }
      if (_stateManager?.GetChange() == Status.left) {
        _dx = -1;
      }
      if (availableSize.maxWidth < _x + _imageWidth) {
        _dx = -1;
      } else if (_x < 0) {
        _dx = 1;
      }
      if (availableSize.maxHeight < _y + _imageHeight) {
        _dy = -1;
      } else if (_y < 0) {
        _dy = 1;
      }

      setState(() {
        _x += _dx * speed;
        _y += _dy * speed;
      });
      _stateManager?.ResetChange();
    }
    _scheduleUpdate();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    if (!_stateManager!.GetStartingState()) {
      _y = (_height - _imageHeight) / 2;
      _x = (_width - _imageWidth) / 2;
    }
    return Scaffold(
        body: Container(
      height: _height,
      width: _width,
      child: Stack(
        children: [
          _playGroundWidget(_height, _width),
          !_stateManager!.GetStartingState()
              ? _tutorialHelper(_height, _width)
              : Container(),
        ],
      ),
    ));
  }

  _tutorialHelper(double height, double width) {
    return Container(
      height: height,
      width: width,
      color: Constants.COLOR_MAIN_DARK.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  top: height / 5, left: width / 10, right: width / 10),
              child: Column(
                children: [
                  const Text(
                    "دکمه‌ی شروع رو بزن و با کشیدن سمت چپ و راست جهت حرکت مربع رو عوض کن!",
                    style: Constants.TEXT_STYLE_WHITE_SMALL_BOLD,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 80),
                    child: const Text(
                      "اگرم به نت وصلی میتونی رو مربع کلیک کنی تا یک عکسی بیاد!",
                      style: Constants.TEXT_STYLE_WHITE_SMALL_BOLD,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width * 1 / 4,
                height: height / 6,
                child: RiveAnimation.asset(
                  Constants.RIVE_ARROW,
                  fit: BoxFit.fitWidth,
                  animations: const ['Animation 1'],
                  controllers: [_controller],
                ),
              ),
              RotationTransition(
                turns: new AlwaysStoppedAnimation(180 / 360),
                child: Container(
                  width: width * 1 / 4,
                  height: height / 6,
                  child: RiveAnimation.asset(
                    Constants.RIVE_ARROW,
                    fit: BoxFit.fitWidth,
                    animations: const ['Animation 1'],
                    controllers: [_controller],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height / 20),
            child: MyButton(
              width: width * 4 / 5,
              buttonText: "شروع",
              buttonTextStyle: Constants.TEXT_STYLE_BLACK_MEDIUM_BOLD,
              overlayColor: Constants.COLOR_LIGHT_GRAY,
              buttonColor: Constants.COLOR_WHITE_MAIN,
              callBack: () {
                setState(() {
                  _stateManager?.Start();
                });
              },
            ),
          )
        ],
      ),
    );
  }

  _playGroundWidget(double height, double width) {
    return GestureDetector(
      onPanUpdate: (details) {
        // Swiping in right direction.
        if (details.delta.dx > 0 && _stateManager!.GetStartingState()) {
          _stateManager?.RightChange();
        }

        // Swiping in left direction.
        if (details.delta.dx < 0 && _stateManager!.GetStartingState()) {
          _stateManager?.LeftChange();
        }
      },
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Constants.COLOR_BACKGROUND,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              top: _y,
              left: _x,
              duration: Duration(milliseconds: frameInterval),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _getRandomImage();
                  });
                },
                child: Container(
                  height: _imageHeight,
                  width: _imageWidth,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.IMAGE_ROUNDNESS)),
                    color: Constants.COLOR_WHITE_MAIN,
                  ),
                  child: _stateManager!.GetStartingState()
                      ? _cachedImage()
                      : Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _cachedImage() {
    return CachedNetworkImage(
      imageUrl: _imageURL,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
          ),
        ),
      ),
      placeholder: (context, url) => Container(
        height: _imageHeight / 2,
        width: _imageWidth / 2,
        color: Colors.transparent,
        child: const LoadingIndicator(
          indicatorType: Indicator.pacman,
          colors: [
            Constants.COLOR_MAIN_DARK,
          ],
          backgroundColor: Constants.COLOR_WHITE_MAIN,
          pathBackgroundColor: Constants.COLOR_MAIN_DARK,
        ),
      ),
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        size: _imageWidth / 2,
      ),
    );
  }

  _getRandomImage() async {
    await CachedNetworkImage.evictFromCache(_imageURL);
    setState(() {
      _imageURL = RandomImageGiver.Instance!.GiffRandomImage();
    });
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }
}
