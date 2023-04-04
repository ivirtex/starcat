// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/constants.dart';
import 'package:falcon/news/news.dart';
import 'package:falcon/shared/shared.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (_) => const CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: Text('News'),
            ),
            SliverToBoxAdapter(
              child: Body(),
            )
          ],
        ),
      ),
      material: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('News'),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kBodyPadding,
      // TODO(ivirtex): convert to slivers
      child: ListView(
        children: const [
          SizedBox(height: 10),
          ArticleSelection(),
          SizedBox(height: 10),
          ArticleList(),
        ],
      ),
    );
  }
}
