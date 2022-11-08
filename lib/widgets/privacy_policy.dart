
import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/apis.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/utilities/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';



class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ApiConstants().privacy,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () async {
                await launchUrlString('http://103.14.99.198:8082/policy/');

              },
              child: Text(
                ApiConstants().privacy1,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                    color: Color(0xFF4A90E2)
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'and',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: () async {
                await launchUrlString('http://103.14.99.198:8082/policy/');

              },
              child: Text(
                ApiConstants().privacy2,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                    color: Color(0xFF4A90E2)
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
