import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'подпишись на нашу рассылку',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'и узнавай об акциях',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TextFormField(
            style: TextStyle(color: Colors.grey),
            decoration: InputDecoration(
              label: Text(
                'e-mail',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(16, 0, 16, 32),
          child: Row(
            children: const [
              Expanded(
                child: BuildOutlinedButton(text: 'Мужчинам'),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: BuildOutlinedButton(text: 'Женьщинам'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BuildOutlinedButton extends StatelessWidget {
  final String text;
  const BuildOutlinedButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.grey,
          width: 1,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
