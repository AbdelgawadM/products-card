import 'package:flutter/material.dart';
import 'package:session_task1/models/offer_model.dart';
import 'package:session_task1/scrolling/scrolling_options.dart';
import 'package:session_task1/widgets/builder_widgets/card_builder.dart';
import 'package:session_task1/widgets/custom_widgets/custom_text_form.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final List<OfferModel> offerList = [
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
    OfferModel(title: 'Pegasus 40', price: 120, desc: ' US 6 '),
  ];

  @override
  Widget build(BuildContext context) {
    return ScrollingOptions(
      child: Scaffold(
        backgroundColor: const Color(0xff497D74),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 21),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextForm(
                    onPress: () {}, fieldType: 'Search', icon: Icons.search),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              CardBuilder(offerList: offerList),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
