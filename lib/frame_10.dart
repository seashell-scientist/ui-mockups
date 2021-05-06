import 'package:flutter/material.dart';
import './hoot_app_bar.dart';
import './cloud_background.dart';
import './Constants.dart' as Constants;
import './Models/Book.dart';
import './route_testing.dart';
import './book_page.dart';

class Frame10 extends StatelessWidget {
  final Book book = Book(
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
        appBar: HootAppBar(),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: CustomBackground().baseBackgroundDecoration(),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width * .1),
                  right: (MediaQuery.of(context).size.width * .1),
                ),
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(Constants.Constants.cornerRad),
                        topLeft: Radius.circular(Constants.Constants.cornerRad),
                      ),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                Constants.Constants.cornerRad),
                            child: Image.network(book.coverUrl),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * .025),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Text(
                                    book.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            Constants.Constants.textSize1),
                                  ),
                                ),
                                Text(book.summary),
                                Spacer(),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Author: ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: book.author,
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Illustrator: ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: book.illustrator,
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Curator: ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: book.curator,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    NamedButton(
                                      buttonName: 'Read Now',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NamedButton extends StatefulWidget {
  final String buttonName;
  const NamedButton({Key key, this.buttonName}) : super(key: key);
  @override
  _NamedButtonState createState() => _NamedButtonState();
}

class _NamedButtonState extends State<NamedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius:
              new BorderRadius.circular(Constants.Constants.cornerRad),
        ),
        elevation: 10,
        primary: Color(0xff151B54),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          widget.buttonName,
          //buttonName, //there has to be a way to pass args to widget build
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
