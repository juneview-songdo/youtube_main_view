import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../../../main.dart';
import '../feed_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class FeedView extends StatefulWidget {
  FeedView({super.key});

  @override
  State<FeedView> createState() => StateChild();
}

class FeedViewState extends State<FeedView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: SliverAppBar(
                pinned: false,
                backgroundColor: Colors.white,
                title: Image.asset(
                  'assets/view/youtube_main_view/yt_logo_rgb_light.webp',
                  width: 100,
                ),
                actions: [
                  SvgPicture.asset(
                    'assets/view/youtube_main_view/video.svg',
                    width: 20,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.srcIn,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    disabledColor: Colors.grey[700],
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle),
                    disabledColor: Colors.grey[700],
                    onPressed: () {},
                  ),
                ],
                systemOverlayStyle: SystemUiOverlayStyle.dark,
              ),
            )
          ];
        },
        body: ListView(
          shrinkWrap: true,
          children: [
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/photo-1598240087583-2f610faf1eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=80",
              timeAgo: '2 hrs',
              chanel_image_url:
                  "https://wikibio.in/wp-content/uploads/2019/11/Prabhu-Deva.jpg",
              chanel_name: "Marvel Pictures",
              videoTitle: "Black Panther Trialer",
              viewCount: "5M",
            ),
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/flagged/photo-1556746834-1cb5b8fabd54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2252&q=80",
              timeAgo: '8 hrs',
              chanel_image_url:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
              chanel_name: "Son TV",
              videoTitle: "Bhahubai 2, Watch Full movie",
              viewCount: "3M",
            ),
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/photo-1575997759258-91792eaaf87b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              timeAgo: '2 days',
              chanel_image_url:
                  "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80",
              chanel_name: "Stark Studios",
              videoTitle: "Avengers Endgame official Teaser",
              viewCount: "39M",
            ),
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/photo-1505391847043-8b6e24dd6c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              timeAgo: '5 days',
              chanel_image_url:
                  "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
              chanel_name: "Find me Studio",
              videoTitle: "Black Widow versus title music",
              viewCount: "4M",
            ),
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/photo-1594463750939-ebb28c3f7f75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              timeAgo: '1 week',
              chanel_image_url:
                  "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              chanel_name: "Capain TV",
              videoTitle: "The Winter Soldier",
              viewCount: "23M",
            ),
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/photo-1505391847043-8b6e24dd6c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              timeAgo: '2 week',
              chanel_image_url:
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              chanel_name: "Space Nigths",
              videoTitle: "Fighting Astronaut",
              viewCount: "6M",
            ),
            FeedItemView(
              thumbNail:
                  "https://images.unsplash.com/photo-1585128993280-9456c19c987d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1872&q=80",
              timeAgo: '1 year',
              chanel_image_url:
                  "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              chanel_name: "DC Studios",
              videoTitle: "A Nightmare on ELM Streen",
              viewCount: "99k",
            ),
          ],
        ), // _widgetBody,
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return buildApp(appHome: FeedView());
}
