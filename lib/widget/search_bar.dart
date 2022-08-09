import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.isdark,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final bool isdark;
  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: isdark ? Colors.red : Colors.white70,

                borderRadius: BorderRadius.circular(10),

                border: Border.all(width: .5),

                // color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search_rounded,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Somthing..",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                color: Colors.white54,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.notes,
            ),
          ),
        ],
      ),
    );
  }
}
