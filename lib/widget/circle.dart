import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 10),
        separatorBuilder: (context, index) => SizedBox(
          width: 13,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&w=1000&q=80',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text("Bolapor"),
            ],
          );
        },
      ),
    );
  }
}
