import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      color: Color.fromARGB(255, 234, 220, 220),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(9.0),
            height: size.height * 0.23,
            width: size.height * 0.23,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://photoscissors.com/images/samples/3-before.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Iphone 12, space \nnew edition",
                      maxLines: 2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("date time"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "390000\$ taka",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.favorite_outline)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
