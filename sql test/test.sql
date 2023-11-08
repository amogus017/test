-- Tabel Pelayanan Kesehatan
CREATE TABLE PelayananKesehatan (
    PelayananKesehatanID INT PRIMARY KEY,
    NamaPelayanan VARCHAR(255),
    DeskripsiPelayanan TEXT,
    AdministrasiID INT,
    JadwalID INT,
     DokterID INT,
    FOREIGN KEY (AdministrasiID) REFERENCES Administrasi(AdministrasiID),
    FOREIGN KEY (DokterID) REFERENCES Dokter(DokterID),
    FOREIGN KEY (JadwalID) REFERENCES Jadwal(JadwalID)
);

-- Tabel Administrasi
CREATE TABLE Administrasi (
    AdministrasiID INT PRIMARY KEY,
    NamaAdministrasi VARCHAR(255),
    DeskripsiAdministrasi TEXT,
     PasienID INT,
     PelayananKesehatanID INT,
    FOREIGN KEY (PasienID) REFERENCES Pasien(PasienID)
);

-- Tabel Jadwal
CREATE TABLE Jadwal (
    JadwalID INT PRIMARY KEY,
    Tanggal DATE,
    WaktuMulai TIME,
    WaktuSelesai TIME
);

-- Tabel Dokter
CREATE TABLE Dokter (
    DokterID INT PRIMARY KEY,
    NamaDokter VARCHAR(255),
    STR VARCHAR(255),
    Alamat VARCHAR(255),
    SIP VARCHAR(255),
    TTL DATE,
    NomorTelepon VARCHAR(15)
);

-- Tabel Pasien
CREATE TABLE Pasien (
    PasienID INT PRIMARY KEY,
    NamaPasien VARCHAR(255),
    Kontak VARCHAR(10),
    TempatTanggalLahir DATE,
    Alamat VARCHAR(255),
    NomorTelepon VARCHAR(15)
);

-- Tabel Pemeriksaan
CREATE TABLE Pemeriksaan (
    PemeriksaanID INT PRIMARY KEY,
    TanggalPemeriksaan DATE,
    HasilPemeriksaan TEXT,
    Keterangan TEXT,
    DokterID INT,
    PasienID INT,
    JadwalID INT,
    FOREIGN KEY (DokterID) REFERENCES Dokter(DokterID),
    FOREIGN KEY (PasienID) REFERENCES Pasien(PasienID),
    FOREIGN KEY (JadwalID) REFERENCES Jadwal(JadwalID)
);

