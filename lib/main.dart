// main.dart import 'package:flutter/material.dart';

void main() { runApp(SouqDrawApp()); }

class SouqDrawApp extends StatelessWidget { @override Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, title: 'سوق دراو', theme: ThemeData(primarySwatch: Colors.green), home: HomePage(), ); } }

class HomePage extends StatelessWidget { @override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text('مرحبا بكم في سوق دراو')), body: Center( child: ElevatedButton( onPressed: () { Navigator.push( context, MaterialPageRoute(builder: (context) => ProductsPage()), ); }, child: Text('استعراض المنتجات'), ), ), ); } }

class ProductsPage extends StatelessWidget { final List<String> products = [ 'أرز', 'زيت', 'مكرونة', 'منظفات', 'عصائر', ];

@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text('المنتجات')), body: ListView.builder( itemCount: products.length, itemBuilder: (context, index) { return ListTile( title: Text(products[index]), trailing: Icon(Icons.shopping_cart), ); }, ), ); } }

