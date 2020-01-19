import 'package:blog_application/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const title = '博客应用';
  static final HttpLink _httpLink = HttpLink(
    uri: 'http://localhost:4000/grphql',
  );

  static final AuthLink _authLink = AuthLink();

  static final Link _link = _authLink.concat(_httpLink);

  final ValueNotifier<GraphQLClient> _graphQLClient = ValueNotifier<GraphQLClient>(
    GraphQLClient(
      cache: InMemoryCache(),
      link: _link,
    )
  );

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: _graphQLClient,
      child: MaterialApp(title: title, home: HomePage()),
    );
  }
}
