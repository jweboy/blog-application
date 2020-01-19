import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  _handleItemTap(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text('如何保持学习 Node 兴趣 $index'),
                      subtitle: Text('创建日期： 2019-07-23'),
                      onTap: () => _handleItemTap(index),
                    ),
                  );
                },
              )),
          Expanded(
            flex: 2,
            child: Container(
                child: Container(
              child: Center(
                child: Text('data.'),
              ),
              color: Colors.tealAccent,
            )),
          ),
        ],
      ),
    );
  }
}
