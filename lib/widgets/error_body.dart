import 'package:flutter/material.dart';

class ErrorBody extends StatelessWidget {
  final VoidCallback onRetry;

  const ErrorBody({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: Colors.red,
            size: 80,
          ),
          const SizedBox(height: 16),
          const Text(
            "Oops, there was an error!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: onRetry,
              child: const Text("Retry",
                  style: TextStyle(
                    color: Colors.black,
                  ))),
        ],
      ),
    );
  }
}