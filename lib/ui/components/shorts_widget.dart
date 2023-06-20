import 'package:flutter/material.dart';

class ShortsWidget extends StatefulWidget {
  const ShortsWidget({Key? key}) : super(key: key);

  @override
  State<ShortsWidget> createState() => _ShortsWidgetState();
}

class _ShortsWidgetState extends State<ShortsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Row(
            children: [
              _buildShort(),
              _buildShort(),
              _buildShort(),
              _buildShort(),
              _buildShort(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShort() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          _buildBackground(),
          _buildPopupMenu(),
          _buildGradient(),
          _buildTitleAndSubTitle(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Image.network(
      'https://image.isu.pub/200212234529-b9d2ace08ae3a71f3e1808b2e3646b19/jpg/page_1_thumb_large.jpg',
      height: 220,
      width: 140,
      fit: BoxFit.cover,
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildPopupMenu() {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [];
      },
    );
  }

  Widget _buildTitleAndSubTitle() {
    return const Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter 1타 강사 - 오준석의 기본 문법편',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '조회수 150만회',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}
