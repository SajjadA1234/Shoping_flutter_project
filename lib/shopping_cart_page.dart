import 'dart:io';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  final _formKey = GlobalKey<FormState>();
  String productName = '';
  int quantity = 1;
  String productType = '';
  String address = '';
  String phoneNumber = '';
  File? _image; // To store the picked image
  final String defaultImageUrl =
      'data:image/jpeg;base64,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'; // Fake URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Product Image
              GestureDetector(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(8.0),
                    image: _image != null
                        ? DecorationImage(
                            image: FileImage(_image!),
                            fit: BoxFit.cover,
                          )
                        : DecorationImage(
                            image: NetworkImage(defaultImageUrl),
                            fit: BoxFit.cover,
                          ),
                  ),
                  child: _image == null
                      ? Center(child: Text(''))
                      : null,
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Product Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter product name';
                  }
                  return null;
                },
                onChanged: (value) {
                  productName = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Quantity',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter quantity';
                  }
                  return null;
                },
                onChanged: (value) {
                  quantity = int.tryParse(value) ?? 1;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Product Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter product type';
                  }
                  return null;
                },
                onChanged: (value) {
                  productType = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                onChanged: (value) {
                  address = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onChanged: (value) {
                  phoneNumber = value;
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the data
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data...')),
                    );
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
