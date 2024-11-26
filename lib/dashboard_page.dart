import 'package:flutter/material.dart';
import 'profil_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'image': 'assets/images/garden.png', // Image path
        'color': Colors.purple,
        'title': 'Laundry Cuci Bersih Setrika',
        'price': 'Rp. 10.000',
      },
      {
        'image': 'assets/images/garden.png', // Image path
        'color': Colors.green,
        'title': 'Tukang Kebun Profesional',
        'price': 'Rp. 20.000',
      },
      {
        'image': 'assets/images/chef.png', // Image path
        'color': Colors.orange,
        'title': 'Tukang Masak Profesional',
        'price': 'Rp. 25.000',
      },
      {
        'image': 'assets/images/plumbing.png', // Image path
        'color': Colors.blue,
        'title': 'Ahli Pipa & Plumbing',
        'price': 'Rp. 30.000',
      },
      {
        'image': 'assets/images/car_service.png', // Image path
        'color': Colors.red,
        'title': 'Servis Kendaraan',
        'price': 'Rp. 50.000',
      },
      {
        'image': 'assets/images/house_repair.png', // Image path
        'color': Colors.brown,
        'title': 'Jasa Renovasi Rumah',
        'price': 'Rp. 100.000',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Abang'),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Navigate to ProfileScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Apa yang dibutuhkan?',
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return GestureDetector(
                    onTap: () {
                      // Navigate to product details page
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Card(
                      color: Colors.grey[800],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Use Image.asset to display the image
                          Image.asset(
                            product['image'],
                            width: 100, // Set a fixed width
                            height: 100, // Set a fixed height
                            fit: BoxFit.cover, // Ensure the image scales properly
                          ),
                          const SizedBox(height: 10),
                          Text(
                            product['title'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            product['price'],
                            style: const TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
