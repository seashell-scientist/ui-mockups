import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './cloud_background.dart';
import './Constants.dart' as Constants;
import './route_testing.dart';
import './Models/Book.dart';

class LibraryPage extends StatelessWidget {
  final Book sampleBook = Book(
    title: 'I Can Too: Dyslexic Heroes',
    author: 'James E Gentry',
    curator: 'Curator Dude',
    illustrator: 'Illustrator Dude',
    summary:
        'Book description paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Cras pulvinar mattis nunc sed blandit libero volutpat.',
    coverUrl:
        'https://firebasestorage.googleapis.com/v0/b/gentry-publishing-app.appspot.com/o/books%2FI%20Can%20Too%20-%20Dyslexic%20Heroes_1599163253736%2Fcover_image.png?alt=media&token=a00b80bf-e404-4c40-bd2a-600fbca81780',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: LibraryAppBar(),
        body: Stack(
          children: [
            Container(
                decoration: CustomBackground().baseBackgroundDecoration()),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Scrollbar(
                                          child: ListView(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: CategoryCard(
                                categoryTitle: 'Book Category 1',
                              ),
                            ),
                          ),
                          Wrap(spacing: 12, runSpacing: 12, children: [
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                          ]),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: CategoryCard(
                                categoryTitle: 'Book Category 2',
                              ),
                            ),
                          ),
                          Wrap(spacing: 12, runSpacing: 12, children: [
                            BookCover(coverURL: sampleBook.coverUrl),//how to pass a route to this object? 
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                          ]),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: CategoryCard(
                                categoryTitle: 'Book Category 3',
                              ),
                            ),
                          ),
                          Wrap(spacing: 12, runSpacing: 12, children: [
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                          ]),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: CategoryCard(
                                categoryTitle: 'Book Category 4',
                              ),
                            ),
                          ),
                          Wrap(spacing: 12, runSpacing: 12, children: [
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                            BookCover(coverURL: sampleBook.coverUrl),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    ); //Text('wrapped rows inside a single scrollable column');
  }
}

class BookCover extends StatefulWidget {
  final String coverURL;
  const BookCover({
    Key key,
    this.coverURL,
  }) : super(key: key);
  @override
  _BookCoverState createState() => _BookCoverState();
}

class _BookCoverState extends State<BookCover> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .15,
      width: MediaQuery.of(context).size.width * .15,
      child: ElevatedButton(
        onPressed: () {Navigator.pop(context);},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 10,
        ),
        clipBehavior: Clip.antiAlias,
        autofocus: false,
        child: Image.network(widget.coverURL),
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  final String categoryTitle;
  const CategoryCard({
    Key key,
    this.categoryTitle,
  }) : super(key: key);
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .05,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(widget.categoryTitle, textScaleFactor: 1.5),
      ),
    );
  }
}

class LibraryAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return 
    
    AppBar(centerTitle: false, 
    title: Text("Hoot Web App"),
      actions: [
        SizedBox( width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.width * .1,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(color: Colors.white,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: TextField(decoration: InputDecoration(border: InputBorder.none,
          hintText: 'Search'),),
                          ),
                        ),
                      ),
                    ),
                  ),
        
        IconButton( 
          onPressed: () {}, 
          icon: Icon(Icons.star,),
          tooltip: 'Favorites',),
        IconButton( 
          onPressed: () {}, 
          icon: Icon(Icons.assistant_photo_outlined,),
          tooltip: 'Bookmarks',),
      ],
    );
    
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
