
-- Harus berhasil
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('12502', 'jen', 'Manajemen',
     2025, 'jen@example.com');

-- Harus gagal: NIM duplikat
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('12501', 'Andrew', 'Teknik Informatika', 2025,
     'andrew@example.com');


-- Harus gagal: angkatan di luar rentang
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('19001', 'Johnny', 'Teknik Lingkungan',
     1990, 'johnny@example.com');

-- Harus gagal: nama hanya berisi spasi
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('12503', '   ', 'Teknik Informatika',
     2025, 'kosong@example.com');

