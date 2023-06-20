import 'package:flutter/material.dart';

import 'custom_button.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildBottomAppBar();
  }

  Widget _buildBottomAppBar() {
    const iconSize = 30.0;

    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          top: Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: iconSize,
          ),
          bottom: Text(
            '홈',
            style: TextStyle(color: Colors.white),
          ),
        ),
        CustomButton(
          top: Icon(
            Icons.videocam_outlined,
            color: Colors.white,
            size: iconSize,
          ),
          bottom: Text(
            'Shorts',
            style: TextStyle(color: Colors.white),
          ),
        ),
        CustomButton(
          top: Icon(
            Icons.add_circle_outline_outlined,
            color: Colors.white,
            size: iconSize,
          ),
          bottom: Text(''),
        ),
        CustomButton(
          top: Icon(
            Icons.library_add_outlined,
            color: Colors.white,
            size: iconSize,
          ),
          bottom: Text(
            '구독',
            style: TextStyle(color: Colors.white),
          ),
        ),
        CustomButton(
          top: Icon(
            Icons.video_library_outlined,
            color: Colors.white,
            size: iconSize,
          ),
          bottom: Text(
            '보관함',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
