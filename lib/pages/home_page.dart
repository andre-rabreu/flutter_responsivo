import 'package:flutter/material.dart';
import 'package:flutter_responsivo/breakpoints.dart';
import 'package:flutter_responsivo/widgets/app_bar/app_bar_web.dart';
import 'package:flutter_responsivo/widgets/app_bar/app_bar_mobile.dart';
import 'package:flutter_responsivo/widgets/favorite/favorite_widget.dart';
import 'package:flutter_responsivo/widgets/product_widget.dart';
import 'package:flutter_responsivo/widgets/top_section/top_section_mobile.dart';
import 'package:flutter_responsivo/widgets/top_section/top_section_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth > breakpointMobile
          ? const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWeb(),
          )
          : const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: AppBarMobile()
          ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 1400,
              child: Column(
                children: [
                  constraints.maxWidth > breakpointMobile
                    ? const TopSectionWeb()
                    : const TopSectionMobile(),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                        children: [
                          Expanded(child: FavoriteWidget()),
                          Expanded(child: FavoriteWidget()),
                          Expanded(child: FavoriteWidget()),
                        ]
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(height: 1, child: Container(color: Colors.grey,)),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        ProductWidget(), ProductWidget(), ProductWidget(),
                        ProductWidget(), ProductWidget(), ProductWidget(),
                        ProductWidget(), ProductWidget(), ProductWidget(),
                        ProductWidget(), ProductWidget(), ProductWidget(),
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}