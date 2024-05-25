import 'package:flutter/material.dart';
import 'posts_page.dart';
import 'post_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = [
      {'title': 'Post 1', 'category': 'Mariage', 'subCategory': 'Traiteur'},
      {'title': 'Post 2', 'category': 'Fête de Naissance', 'subCategory': 'Décorateur de fête'},
      {'title': 'Post 3', 'category': 'Baby Shower', 'subCategory': 'Agence décoration'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation App'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: 'Menu',
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Mariage'),
              children: <Widget>[
                ListTile(
                  title: const Text('Traiteur'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Traiteur',
                        ),
                      ),
                    );
                  },
                ),
                ExpansionTile(
                  title: const Text('Salle de fête ou Lieu de réception'),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Salle de réception'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PostsPage(
                              category: 'Mariage',
                              subCategory: 'Salle de réception',
                            ),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Villa privée'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PostsPage(
                              category: 'Mariage',
                              subCategory: 'Villa privée',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                ListTile(
                  title: const Text('Planificateur de mariage Nagafa'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Planificateur de mariage Nagafa',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Tyafer / Chocolatier'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Tyafer / Chocolatier',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Photographe et vidéographe'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Photographe et vidéographe',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Musique DJ ou Orchestre'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Musique DJ ou Orchestre',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Pâtisserie / Wedding Cake'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Pâtisserie / Wedding Cake',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Adoul / Cérémonie religieuse'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Adoul / Cérémonie religieuse',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Maquilleur et coiffeur'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Maquilleur et coiffeur',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Locataire des Robes de mariée et tenues pour le marié'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Locataire des Robes de mariée et tenues pour le marié',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Spa / Hammam'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Spa / Hammam',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Transport'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Transport',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Agence de voyage “lune de miel”'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Mariage',
                          subCategory: 'Agence de voyage “lune de miel”',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.cake),
              title: const Text('Baby Shower'),
              children: <Widget>[
                ListTile(
                  title: const Text('Agence décoration'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Baby Shower',
                          subCategory: 'Agence décoration',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Pâtissier ou boulanger'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Baby Shower',
                          subCategory: 'Pâtissier ou boulanger',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Traiteur'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Baby Shower',
                          subCategory: 'Traiteur',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: const Icon(Icons.child_friendly),
              title: const Text('Fête de naissance / Sboua'),
              children: <Widget>[
                ListTile(
                  title: const Text('Artiste ou animateur'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Fête de naissance / Sboua',
                          subCategory: 'Artiste ou animateur',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Décorateur de fête'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Fête de naissance / Sboua',
                          subCategory: 'Décorateur de fête',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Traiteur'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostsPage(
                          category: 'Fête de naissance / Sboua',
                          subCategory: 'Traiteur',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostPage(
                    title: post['title']!,
                    category: post['category']!,
                    subCategory: post['subCategory']!,

                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(post['title']!),
                  Text(post['category']!),
                  Text(post['subCategory']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
