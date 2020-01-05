    import 'package:flutter/material.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ListViews',
          theme: ThemeData(
            primarySwatch: Colors.pink,
          ),
          home: Scaffold(
            appBar: AppBar(title: Text('ListViews')),
            body: BodyLayout(),
          ),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

    Widget _myListView(BuildContext context) {
      // backing data
      final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
        'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
        'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
        'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

      return ListView.separated(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/sun.jpg'),
            ),
            title: Text(europeanCountries[index]),
            //leading: Icon(Icons.wb_auto),
            trailing: Icon(Icons.keyboard_arrow_right),
            subtitle: Text('93 million miles away'), //<-- subtitle
            onTap: () {
              print(europeanCountries[index]);
            },
            
          );
        },
        /*        
        itemCount: 1000,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('row $index'),
          );
        },
        */

        separatorBuilder: (context, index) {
          return Divider();
        },
      );



/*
    Widget _myListView(BuildContext context) {
      return ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(europeanCountries[index]),
          );
        },
      );

    }

      return ListView(        
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Sun'),
            ),
            ListTile(
              title: Text('Moon'),
            ),
            ListTile(
              title: Text('Star'),
            ),
          ]
        ).toList(),
      );
*/
    }
