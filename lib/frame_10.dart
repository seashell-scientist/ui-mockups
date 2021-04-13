import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './cloud_background.dart';
import './Constants.dart' as Constants;
import './Models/Book.dart';

class Frame_10 extends StatelessWidget {
  Book book = Book(
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
              // first stack item for background
              decoration: CustomBackground().baseBackgroundDecoration(),
            ),
            //second stack item, primary box thing
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * .6,
                width: MediaQuery.of(context).size.width * .75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(Constants.Constants.cornerRad),
                      topLeft:
                          Radius.circular(Constants.Constants.cornerRad),
                    ),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.5)),


                child: Row(
                      children: [
                        
                        Expanded(
                                                  child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                Constants.Constants.cornerRad),
                            child: Image.network(book.coverUrl),
                          ),
                        ),
       // Spacer(),
                
                        //right hand side
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(book.title,
                    style: TextStyle(
                        fontSize: Constants
                            .Constants.textSize1),),
                            
                
                            Text(book.summary),
                           // Spacer(),
                          
                                
                                
                                
                                Row(
                            
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Author: ' + book.author),
                      Text('Curator: ' + book.curator),
                      Text('Illustrator: ' +
                          book.illustrator),
                                
                    ],
                  ),
                  //Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius:
                            new BorderRadius.circular(
                                Constants
                                    .Constants.cornerRad),
                      ),
                      elevation: 10,
                      primary: Color(0xff151B54),
                      minimumSize: Size(200, 80),
                    ),
                    child: Text('Read Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Constants
                                .Constants.textSize2)),
                  ),
                ],
                                ),
                          
                          ],
                        ),
                      ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
