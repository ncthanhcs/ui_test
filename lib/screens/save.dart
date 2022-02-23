import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/configs/color.dart';
import 'package:ui_test/configs/image.dart';
import 'package:ui_test/utils/color.dart';
import 'package:ui_test/widgets/circle_button.dart';
import 'package:ui_test/widgets/item_gridview.dart';
import 'package:ui_test/widgets/text_money.dart';

class Save extends StatelessWidget {
  final List<String> listAdvertise = [slide1, slide2, slide3];
  final List<Map<String, String>> listItemGridView = [
    {'image': save, 'text': 'Mở tiết kiệm thông thường'},
    {'image': house, 'text': 'Mở tiết kiệm tích luỹ'},
    {'image': phone, 'text': 'Mở tiết kiệm linh hoạt'},
    {'image': stock, 'text': 'Nộp tiền chứng khoán'},
  ];

  Save({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Box border info money
              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: UtilColor.getColorFromHex(lineColor), width: 3)),
                child: AspectRatio(
                  aspectRatio: 4 / 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tổng số dư tiết kiệm & đầu tư",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        const TextMoney(money: '3.912.000.000', fontSize: 18)
                      ]),
                ),
              ),
              // Row info money
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Tiết kiệm',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    const Spacer(),
                    const TextMoney(money: '3.912.000.000', fontSize: 15),
                    CircleButton(
                        icon: Icons.navigate_next, callback: () {}, size: 30)
                  ],
                ),
              ),
              // line separation
              SizedBox(
                height: 2,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    UtilColor.getColorFromHex(lineColor),
                    UtilColor.getColorFromHex(primaryColor)
                  ])),
                ),
              ),
              // slider advertisement using corousel slider
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      aspectRatio: 3 / 1,
                      autoPlay: true,
                      viewportFraction: 1,
                      enableInfiniteScroll:
                          listAdvertise.isEmpty ? false : true),
                  itemCount: listAdvertise.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset(listAdvertise[itemIndex]).image),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Tiết kiệm và Đầu tư",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 15),
                ),
              ),
              // Gribview other feature
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 30,
                children: List.generate(
                    listItemGridView.length,
                    (index) => ItemGridView(
                        text: listItemGridView[index]['text']!,
                        image: listItemGridView[index]['image']!)),
              )
            ]),
      ),
    );
  }
}
