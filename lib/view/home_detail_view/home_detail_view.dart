import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../profile_detail_view/profile_detail_view.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orange.shade800,
          child: const Icon(
            Icons.add,
            size: 50,
            color: Colors.white,
          ),
        ),
        body: const _ViewContent());
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          _HomeScreenTitleWidget(),
          SizedBox(
            height: 20,
          ),
          _TabBarWidget(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: _ListInfoWidget())
        ],
      ),
    );
  }
}

class _HomeScreenTitleWidget extends StatelessWidget {
  const _HomeScreenTitleWidget();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Lorem ipsum',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.grey),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lorem ipsum ',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.black, fontSize: 25)),
          Text('dolor sit amet',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.black, fontSize: 25))
        ],
      ),
      trailing: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const ProfileDetailView(),
            ),
          );
        },
        child: const CircleAvatar(
          maxRadius: 25,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

class _TabBarWidget extends StatelessWidget {
  const _TabBarWidget();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.orange.shade800,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(text: 'All'),
                    Tab(text: 'Developer'),
                    Tab(text: 'Designer'),
                    Tab(text: 'Managment'),
                  ],
                ),
              ),
            ]));
  }
}

class _ListInfoWidget extends StatelessWidget {
  const _ListInfoWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Slidable(
          startActionPane: ActionPane(motion: const StretchMotion(), children: [
            SlidableAction(
              backgroundColor: Colors.red,
              label: 'Delete',
              onPressed: (context) {},
            )
          ]),
          child: Card(
            semanticContainer: false,
            elevation: 0.1,
            child: ListTile(
              title: Text(
                'Deneme',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black, fontSize: 20),
              ),
              subtitle: const Text('Developer'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
