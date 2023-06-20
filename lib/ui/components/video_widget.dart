import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildBottom(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildTop() {
    return Image.network(
      'https://i.ytimg.com/vi/a0lu8I6UB-4/sddefault.jpg',
      height: 200,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildBottom() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildAccount(),
          _buildTitleAndSubTitle(),
          _buildPopupMenu(),
        ],
      ),
    );
  }

  Widget _buildAccount() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(Icons.account_circle_outlined),
    );
  }

  Widget _buildTitleAndSubTitle() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Flutter 1타 강사 - 오준석의 기본 문법편',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '조회수 150만회 1일전',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildPopupMenu() {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [];
      },
    );
  }
}
