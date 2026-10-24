
# Ujian Kontainerisasi Database
Nama    : Keira Arina Khalisha
NIM     : 1247050056
Kelas   : IF B

## Deskripsi
Proyek ini menggunakan Docker Compose untuk menjalankan
PostgreSQL 15 dan pgAdmin 4.

## Teknologi
- Docker Desktop
- PostgreSQL 15
- pgAdmin 4
- DBeaver

## Port
- PostgreSQL: 22056
- pgAdmin: 44056

## Struktur
- docker-compose.yml: konfigurasi container
- .env.example: template variabel lingkungan
- init/01-schema.sql: pembuatan schema dan tabel
- scripts/02-users.sql: pembuatan role dan hak akses
- scripts/03-test-privileges.sql: pengujian hak akses

## Menjalankan proyek
1. Salin .env.example menjadi .env.
2. Isi kredensial pada .env.
3. Jalankan docker compose config.
4. Jalankan docker compose up -d.
5. Hubungkan pgAdmin dan DBeaver.
6. Jalankan script SQL sesuai urutan.

## Keamanan
File .env asli tidak disertakan dalam repository.
Gunakan kredensial lokal masing-masing.
