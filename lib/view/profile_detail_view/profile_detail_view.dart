import 'package:flutter/material.dart';

class ProfileDetailView extends StatelessWidget {
  const ProfileDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ViewContent(),
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: const [
        _AppBarWidget(),
        _NameWidget(),
        _PersonDetailWidget(),
        _ContentWidget()
      ]),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackButton(),
        const SizedBox(
          width: 130,
        ),
        Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.black),
        )
      ],
    );
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(37.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Austin Lorge',
            style:
                Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 20),
          ),
          Text('Developer',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Colors.grey))
        ],
      ),
    );
  }
}

class _PersonDetailWidget extends StatelessWidget {
  const _PersonDetailWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text('5'),
            Text(
              'Experience',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.grey),
            )
          ],
        ),
        Column(
          children: [
            const Text('35'),
            Text(
              'Age',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.grey),
            )
          ],
        ),
        Column(
          children: [
            const Text('7'),
            Text(
              'Project',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}

class _ContentWidget extends StatelessWidget {
  const _ContentWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.email),
              SizedBox(
                width: 10,
              ),
              Text('deneme@mail.com')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(Icons.phone_enabled),
              SizedBox(
                width: 10,
              ),
              Text('+09053734984393')
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
