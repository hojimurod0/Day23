import 'package:flutter/material.dart';
import 'dart:async';

class ComputationScreen extends StatefulWidget {
  @override
  _ComputationScreenState createState() => _ComputationScreenState();
}

class _ComputationScreenState extends State<ComputationScreen> {
  int? _result;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _performHeavyComputation();
  }

  Future<void> _performHeavyComputation() async {
    int result = await heavyComputation();
    setState(() {
      _result = result;
      _isLoading = false;
    });
  }

  Future<int> heavyComputation() async {
    return await Future<int>.delayed(Duration.zero, () {
      int sum = 0;
      for (int i = 0; i < 1000000000; i++) {
        sum += i;
      }
      return sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Heavy Computation')),
      body: Center(
        child:
            _isLoading ? CircularProgressIndicator() : Text('Natija=$_result'),
      ),
    );
  }
}
