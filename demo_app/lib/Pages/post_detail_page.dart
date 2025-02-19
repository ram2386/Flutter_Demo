import 'package:demo_app/custom_widgets/custom_action_image_view.dart';
import 'package:demo_app/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          tooltip: 'Show Snackbar',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        physics: const BouncingScrollPhysics(),
        children: const [
          CustomText(
            text:
                "Harmanpreet hopes WPL will reduce gap between India and Australia",
            size: 20,
            color: kHighlightedFontColor,
            weight: kTitleFontWeight,
          ),
          SizedBox(
            height: 12,
          ),
          CustomActionImageView(
            imageUrl:
                "https://static.toiimg.com/photo/msid-70152799/70152799.jpg",
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          SizedBox(
            height: 12,
          ),
          SafeArea(
            child: CustomText(
              text:
                  "India captain Harmanpreet Kaur has said that she hopes the Women’s Premier League can bridge the quality gap between India and Australia. The inaugural season of the WPL is set to kick-start on March 4, with the first match to be played between Gujarat Giants and Mumbai Indians. I think this is a great platform for all Indian players because we have been missing this tournament for a long time. Definitely, for Australia and England the WBBL and Hundred have worked very well and after those tournaments they've got so much young talent,” said Harmanpreet.She went on to say that after the WPL, the difference in quality between India and Australia could be bridged, adding that India will definitely make a good team after the WPL. “After the WPL we are also going to get some good talent and I'm sure the difference you're talking about [between India and Australia sides] we'd love to cut down. When you see good talent coming up, you're definitely going to make a good team after the WPL,” Harmanpreet added. Harmanpreet is set to lead Mumbai Indians in the inaugural season of the WPL, after the Mumbai-based franchise splashed out Rs 1.80 crore for her in the auction, held on February 13. As it turns out, both the captains of the Indian men's and women's senior teams, Rohit Sharma and Harmanpreet Kaur, will play for Mumbai Indians.",
              size: 16,
              color: kFontColor,
              weight: kParagraphFontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
