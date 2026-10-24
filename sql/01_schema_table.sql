
CREATE SCHEMA IF NOT EXISTS "SALAM";

CREATE TABLE IF NOT EXISTS "SALAM".mahasiswas (
    id_mahasiswa INTEGER GENERATED ALWAYS AS IDENTITY,
    nim VARCHAR(15) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    jurusan VARCHAR(100) NOT NULL,
    angkatan INTEGER NOT NULL,
    email VARCHAR(150) NOT NULL,

    CONSTRAINT pk_mahasiswas
        PRIMARY KEY (id_mahasiswa),

    CONSTRAINT uq_mahasiswas_nim
        UNIQUE (nim),

    CONSTRAINT uq_mahasiswas_email
        UNIQUE (email),

    CONSTRAINT chk_mahasiswas_nama
        CHECK (LENGTH(TRIM(nama)) > 0),

    CONSTRAINT chk_mahasiswas_angkatan
        CHECK (angkatan BETWEEN 2000 AND 2100)
);

INSERT INTO "SALAM".mahasiswas
    (nim, nama, jurusan, angkatan, email)
VALUES
    ('12501', 'Andrew', 'Teknik Informatika', 2025,
     'andrew@example.com'),
    ('12401', 'Sakura', 'Biologi', 2024,
     'sakura@example.com'),
    ('12601', 'Keith', 'Teknik Informatika', 2026,
     'keith@example.com');
