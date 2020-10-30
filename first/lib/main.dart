import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: _myDrawer(),
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
        ),
        body: _myListView(),
              )
            );
          }
          Widget _myListView(Iterable<WordPair> take) {
          return  ListView.builder(itemBuilder: (
            BuildContext context, int i) {
              final index = i ~/2;
              if (index >= _myListView()){
                _myListView(generateWordPairs().take(10));
              }

              return ListTile(
                title: Text('my text'),
              );
            },
          );
        
                  
                
        }
        
        Widget _myDrawer(){
          return Drawer(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('Menu 1'),
                        onTap: (){
                       print('You Clicked');
                     },
                      ),
                      ListTile(
                        title: Text('Menu 2'),
                      ),
                      ListTile(
                        title: Text('Menu 3'),
                      ),
                      ListTile(
                        title: Text('Menu 4'),
                      ),
                      ListTile(
                        title: Text('Menu 5'),
                      )
                    ],
                  ),
                );
          
        
        }
        
          
}