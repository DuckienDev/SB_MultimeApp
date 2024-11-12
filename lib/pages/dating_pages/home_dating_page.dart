import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomeDatingPage extends StatefulWidget {
  const HomeDatingPage({
    super.key,
  });

  @override
  State<HomeDatingPage> createState() => _HomeDatingPageState();
}

class _HomeDatingPageState extends State<HomeDatingPage> {
  final CardSwiperController controller = CardSwiperController();

  final cards = [
    Container(
      height: 400,
      width: 200,
      color: Colors.amber,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.black,
    ),
    Container(
      height: 200,
      width: 200,
      color: Colors.green,
    ),
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: CardSwiper(
                controller: controller,
                cardsCount: cards.length,
                // onSwipe: _onSwipe,
                // onUndo: _onUndo,
                numberOfCardsDisplayed: 2,
                backCardOffset: const Offset(0, 0),
                padding: const EdgeInsets.all(24.0),
                cardBuilder: (
                  context,
                  index,
                  horizontalThresholdPercentage,
                  verticalThresholdPercentage,
                ) =>
                    cards[index],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // bool _onSwipe(
  //   int previousIndex,
  //   int? currentIndex,
  //   CardSwiperDirection direction,
  // ) {
  //   debugPrint(
  //     'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
  //   );
  //   return true;
  // }

  // bool _onUndo(
  //   int? previousIndex,
  //   int currentIndex,
  //   CardSwiperDirection direction,
  // ) {
  //   debugPrint(
  //     'The card $currentIndex was undod from the ${direction.name}',
  //   );
  //   return true;
  // }
}
