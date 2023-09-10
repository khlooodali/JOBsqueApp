import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  final PageController? pagecontroller;
  const CustomPageView({
    super.key,
    @required this.pagecontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: PageView(
        controller: pagecontroller,
        children: const [
          PageItem(
            bluetitle: 'Start Building',
            lblacktitle: '  your career from now on',
            imagenum: 1,
            fblacktitle: "Find a job, and ",
            subtitle:
                "Explore over 25,924 available job roles and upgrade your operator now.",
          ),
          PageItem(
            bluetitleinlast: ' join to gether',
            imagenum: 2,
            fblacktitle: "Hundreds of jobs are waiting for you to",
            subtitle:
                "The better the skills you have, the greater the good job opportunities for you.",
          ),
          PageItem(
            bluetitle: 'choice for the job',
            lblacktitle: "  you've always dreamed of",
            imagenum: 3,
            fblacktitle: "Get the best  ",
            subtitle:
                "Immediately join us and start applying for the job you are interested in.",
          ),
        ],
      ),
    );
  }
}

class PageItem extends StatelessWidget {
  final int? imagenum;
  final String? lblacktitle;
  final String? subtitle;
  final String? bluetitle;
  final String? fblacktitle;
  final String? bluetitleinlast;
  const PageItem({
    super.key,
    @required this.imagenum,
    @required this.subtitle,
    this.bluetitle,
    this.lblacktitle,
    this.fblacktitle,
    this.bluetitleinlast,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/onboarding$imagenum.png',
            height: 400,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
              padding: const EdgeInsets.only(
                  top: 24, bottom: 12, left: 24, right: 24),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: fblacktitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextSpan(
                  text: bluetitle,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextSpan(
                  text: lblacktitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextSpan(
                  text: bluetitleinlast,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ]))),
          Padding(
            padding: const EdgeInsets.only(bottom: 80, left: 24, right: 24),
            child: Text(
              subtitle!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
