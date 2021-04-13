import 'package:flutter/material.dart';

Card productTile(context, index) {
  return Card(
    elevation: 3,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.asset(
                    "assets/images/product_${index + 1}.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Product Name",
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              'Price: \$100',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ]),
    ),
  );
}
