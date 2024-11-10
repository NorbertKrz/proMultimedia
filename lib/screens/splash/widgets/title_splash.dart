import 'package:flutter/material.dart';

class TitleSplash extends StatelessWidget {
  final String firstLine;
  final String secondLine;
  final List<String> boldWords;

  const TitleSplash({
    super.key,
    required this.firstLine,
    required this.secondLine,
    required this.boldWords,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white, fontSize: 26),
              children: _buildTextSpans(firstLine, boldWords),
            ),
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white, fontSize: 26),
              children: _buildTextSpans(secondLine, boldWords),
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _buildTextSpans(String text, List<String> boldWords) {
    List<TextSpan> spans = [];
    text.split(" ").forEach((word) {
      spans.add(
        TextSpan(
          text: "$word ",
          style: boldWords.contains(word)
              ? const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white,
                )
              : const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 26,
                  color: Colors.white,
                ),
        ),
      );
    });
    return spans;
  }
}
