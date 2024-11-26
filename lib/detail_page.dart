import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Detail Produk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/laundry.jpeg'), // Ganti dengan gambar yang sesuai
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Laundry Cuci Bersih Setrika',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Deskripsi layanan laundry yang lengkap dan memadai...',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Harga: Rp. 10.000',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Aksi pembelian atau add to cart
              },
              child: const Text('Pesan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
