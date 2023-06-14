import 'package:cafe_app/presentation/widgets/news_list_view.dart';
import 'package:cafe_app/presentation/widgets/restaurant_card.dart';
import 'package:cafe_app/presentation/widgets/user_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 220,
        leading: const Center(
          child: Text(
            'Вітаю, user_name!',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        actions: const [
          Row(
            children: [
              Text(
                'user_score Балів',
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const UserCard(),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text(
                'Новини та акції',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 200,
              child: NewsListView()
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Ресторани поряд',
                style: TextStyle(fontSize: 24),
              ),
            ),
             RestaurantCard(),
             RestaurantCard()
          ],
        ),
      ),
    );
  }
}
