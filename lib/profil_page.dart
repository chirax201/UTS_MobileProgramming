import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('ABANG'),
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
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Ganti dengan gambar profil Anda
            ),
            const SizedBox(height: 10),
            // Nama
            const Text(
              'Salman Fariz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 30),
            // Label Profil
            const Text(
              'PROFIL',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            const SizedBox(height: 10),
            // List Menu Profil
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildProfileMenuItem(
                  title: 'Alamat',
                  subtitle: 'Atur alamat anda',
                  icon: Icons.location_on,
                  context: context,
                ),
                _buildProfileMenuItem(
                  title: 'Rekening Bank',
                  subtitle: 'Daftar rekening bank',
                  icon: Icons.account_balance,
                  context: context,
                ),
                _buildProfileMenuItem(
                  title: 'Pembayaran Instan',
                  subtitle: 'E-Wallet, Kartu kredit',
                  icon: Icons.payment,
                  context: context,
                ),
                _buildProfileMenuItem(
                  title: 'Keamanan Akun',
                  subtitle: 'Kata sandi, PIN & Verifikasi data diri',
                  icon: Icons.security,
                  context: context,
                ),
                _buildProfileMenuItem(
                  title: 'Notifikasi',
                  subtitle: 'Atur notifikasi aplikasi',
                  icon: Icons.notifications,
                  context: context,
                ),
                _buildProfileMenuItem(
                  title: 'Privasi Akun',
                  subtitle: 'Atur penggunaan data pribadi',
                  icon: Icons.privacy_tip,
                  context: context,
                ),
                _buildProfileMenuItem(
                  title: 'Log out',
                  subtitle: '',
                  icon: Icons.logout,
                  context: context,
                  isLogout: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileMenuItem({
    required String title,
    required String subtitle,
    required IconData icon,
    required BuildContext context,
    bool isLogout = false,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey[400]),
      ),
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.purple),
      onTap: isLogout
          ? () {
              // Aksi untuk log out
              Navigator.pop(context);
            }
          : () {
              // Aksi untuk menu lain
            },
    );
  }
}
