import 'package:flutter/material.dart';

class SearchTextForm extends StatelessWidget {
  const SearchTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: TextFormField(
          style: const TextStyle(
              color: Colors.white, fontSize: 20, letterSpacing: 2),
          decoration: const InputDecoration(
              hintText: 'Search Chat',
              hintStyle: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 2),
              fillColor: Colors.black38,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff497D74)),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff497D74)),
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
        ),
      ),
    );
  }
}
