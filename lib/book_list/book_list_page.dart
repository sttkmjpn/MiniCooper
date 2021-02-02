import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'file:///C:/Users/user1/AndroidStudioProjects/flutter_app/trial_flutter_app/lib/book_list/book_list_model.dart';
import 'package:trial_flutter_app/add_book/add_book_page.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookListModel>(
      create: (_) => BookListModel()..fetchBooks(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('All About New BMW Mini Cooper'),
          ),
          body: Consumer<BookListModel>(builder: (context, model, child) {
            final books = model.books;
            final listTiles = books
                .map((book) => ListTile(
                      title: Text(book.title),
                    ))
                .toList();
            return ListView(
              children: listTiles,
            );
          }),
          floatingActionButton:
              Consumer<BookListModel>(builder: (context, model, child) {
            return FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddBookPage(),
                      fullscreenDialog: true),
                );
              },
            );
          })),
    );
  }
}
