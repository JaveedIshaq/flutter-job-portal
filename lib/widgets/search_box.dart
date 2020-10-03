import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onChanged: (value) {},
        onTap: () {},
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: "Find Job in",
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
