import 'package:blog_application/views/blog_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  _showDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('新建博客'),
            children: <Widget>[
              Container(
                  width: 350,
                  height: 250,
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    autovalidate: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: '请输入标题',
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return '请输入标题';
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              color: Colors.blueAccent,
                            onPressed: () {
                              if(_formKey.currentState.validate()) {
                                print(_formKey.currentState);
                              }
                            },
                            child: Text('确定', style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('博客管理'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _showDialog(context),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                '个人资料',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
      body: BlogPage(),
    );
  }
}
