import 'package:flutter/material.dart';
import 'package:session_task1/models/offer_model.dart';
import 'package:session_task1/screens/details_screen.dart';
import 'package:session_task1/widgets/item_widgets/card_item.dart';

class CardBuilder extends StatelessWidget {
  const CardBuilder({
    super.key,
    required this.offerList,
  });

  final List<OfferModel> offerList;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
        itemBuilder: (context, index) {
          return CardItem(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ));
              },
              title: offerList[index].title,
              price: offerList[index].price,
              desc: offerList[index].desc);
        },
        itemCount: offerList.length);
  }
}
