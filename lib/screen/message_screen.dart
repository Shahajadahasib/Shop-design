import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(102, 102, 102, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(Icons.arrow_back_ios),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Hello,",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'Shahajada Hasib',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const CircleAvatar(
                              radius: 30,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 5,
                    endIndent: 30,
                    indent: 30,
                    color: Color.fromRGBO(115, 130, 115, 1),
                    thickness: 1.1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                "Balance: ",
                              ),
                              Text(
                                "12932 TK",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.max,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                CircleAvatar(
                                  radius: 16,
                                  child: Icon(
                                    Icons.currency_bitcoin,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      "Top up",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Choose category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10.0),
                    child: CategoryChoose(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryChoose extends StatelessWidget {
  const CategoryChoose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(radius: 18, child: Text("")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Person Name",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: const [
                  CircleAvatar(
                      radius: 14,
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 12),
                      )),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(size: 18, Icons.arrow_forward_ios),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
