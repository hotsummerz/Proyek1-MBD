backend_dev
-- Harus berhasil: READ
SELECT * FROM "SALAM".mahasiswas;

-- Harus berhasil: CREATE DATA (INSERT)
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('30001', 'Tes Backend', 'Teknik Informatika',
     2025, 'backend@example.com');

-- Harus berhasil: UPDATE
UPDATE "SALAM".mahasiswas
SET jurusan = 'Sistem Informasi'
WHERE nim = '30001';

-- Harus berhasil: DELETE
DELETE FROM "SALAM".mahasiswas
WHERE nim = '30001';

-- Harus gagal: membuat tabel baru
CREATE TABLE "SALAM".tes_backend (
    id INTEGER PRIMARY KEY
);


bi_dev
-- Harus berhasil: SELECT
SELECT * FROM "SALAM".mahasiswas;

-- Harus gagal: INSERT
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('30002', 'Tes BI', 'Sistem Informasi',
     2025, 'bi@example.com');

-- Harus gagal: UPDATE
UPDATE "SALAM".mahasiswas
SET nama = 'Perubahan BI'
WHERE nim = '10001';

-- Harus gagal: DELETE
DELETE FROM "SALAM".mahasiswas
WHERE nim = '10001';


data_engineer
-- Harus berhasil: CRUD
INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('30003', 'Tes Engineer', 'Teknik Informatika',
     2026, 'engineer@example.com');

UPDATE "SALAM".mahasiswas
SET jurusan = 'Sistem Informasi'
WHERE nim = '30003';

SELECT * FROM "SALAM".mahasiswas;

DELETE FROM "SALAM".mahasiswas
WHERE nim = '30003';

-- Harus berhasil: CREATE objek
CREATE TABLE "SALAM".tes_engineer (
    id INTEGER PRIMARY KEY,
    keterangan VARCHAR(100)
);

-- Harus berhasil: MODIFY objek
ALTER TABLE "SALAM".tes_engineer
ADD COLUMN dibuat_pada TIMESTAMP;

-- Harus berhasil: DROP objek miliknya
DROP TABLE "SALAM".tes_engineer;
