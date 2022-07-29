import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import '../../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/themes.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          child: CatalogItem(catalog: catalog),
          onTap: (() => Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalog
              )
            )
          )
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image
            )
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.fromLTRB(10, 2, 2, 0),
              children: [
                "\u{20B9}${catalog.price}".text.bold.make(),
                ElevatedButton(
                  onPressed: (() {}), 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      MyTheme.darkBluishColor,
                    ),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    )
                  ),
                  
                  child: "Book Now".text.make(),
                  
                  )
              ],
            )
          ],
        )
        )
      ],
    )).white.rounded.square(200).make().py16();
  }
}