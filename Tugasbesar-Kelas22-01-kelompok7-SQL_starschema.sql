
CREATE TABLE Dimensi_Pelanggan (
    Id_Pelanggan VARCHAR(10) PRIMARY KEY,
    Nama_Pelanggan VARCHAR(100),
    No_Telepon VARCHAR(20),
    Alamat TEXT,
    Tanggal_Daftar DATE
);


CREATE TABLE Dimensi_Produk (
    Id_Produk VARCHAR(10) PRIMARY KEY,
    Nama_Produk VARCHAR(100),
    Kategori VARCHAR(50),
    Harga INT
);


CREATE TABLE Dimensi_Karyawan (
    Id_Karyawan VARCHAR(10) PRIMARY KEY,
    Nama_Karyawan VARCHAR(100),
    Posisi VARCHAR(50),
    Gaji INT,
    Tanggal_Masuk DATE,
    No_Telepon VARCHAR(20)
);


CREATE TABLE Fakta_Penjualan (
    Id_Penjualan VARCHAR(10) PRIMARY KEY,
    Tanggal DATE,
    Id_Pelanggan VARCHAR(10),
    Id_Produk VARCHAR(10),
    Id_Karyawan VARCHAR(10),
    Jumlah INT,
    Total_Harga INT,
    Metode_Pembayaran VARCHAR(50),
    FOREIGN KEY (Id_Pelanggan) REFERENCES Dimensi_Pelanggan(Id_Pelanggan),
    FOREIGN KEY (Id_Produk) REFERENCES Dimensi_Produk(Id_Produk),
    FOREIGN KEY (Id_Karyawan) REFERENCES Dimensi_Karyawan(Id_Karyawan)
);
