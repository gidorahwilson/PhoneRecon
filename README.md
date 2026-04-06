# PhoneRecon
Ruby Phone Number Validation Tool
PhoneRecon adalah tool CLI berbasis Ruby untuk melakukan validasi dan lookup nomor telepon menggunakan API pihak ketiga.

# Persyaratan (Requirements)
Sebelum menjalankan tool ini, pastikan sudah terpasang:

Ruby ≥ 2.7
Koneksi internet
API Key dari penyedia API yang didukung yakni Veriphone

Cek Ruby:

ruby -v

# Cara Install
1) Clone repository dari GitHub
git clone https://github.com/gidorahwilson/PhoneRecon.git
cd PhoneRecon

2) Siapkan API Key (WAJIB)
Tool ini tidak bisa berjalan tanpa API Key.
Daftar dan ambil API key dari website (https://veriphone.io/app), lalu simpan.

3) Jalankan Tool
ruby PhoneRecon.rb

Kamu akan diminta mengisi:

Masukan API_KEY =
Masukan No_Telepon =

Gunakan format internasional (contoh):

+6281234567890

atau

18007132618

# 🧪 Contoh Output

Tool akan menampilkan informasi seperti:

Valid / Invalid number
Country
Carrier
Line type (mobile/landline)
Format internasional & nasional

# ⚠️ Troubleshooting

# ❌ “insufficient credits”

Artinya API key kamu kehabisan kuota. Login ke dashboard API dan cek sisa credit.

# ❌ Nomor tidak terbaca

Pastikan pakai format internasional dengan kode negara.

# ❌ Ruby error cannot load such file

Pastikan Ruby terinstall dengan benar.

👨‍💻 Author

Andriano

# Screenshot
![PhoneRecon](https://github.com/gidorahwilson/PhoneRecon/blob/main/PhoneRecon/Screenshot%20_1.png)
