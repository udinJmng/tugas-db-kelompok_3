# 📚 Sistem Presensi Mahasiswa  

Tugas Kelompok (3)

---

## 🧾 Deskripsi Singkat
Di tugas ini kami buat sistem **Presensi Mahasiswa** sederhana pakai **MySQL**.  
Tujuannya buat nyimpen dan ngatur data mahasiswa, dosen, matkul, prodi, sama data presensinya.

---

## 🔍 Isi Project
- SQL (struktur & relasi antar tabel)  
- ERD (Entity Relationship Diagram)  
- Penjelasan tiap tabel + kardinalitasnya  

---

## 🧱 Struktur Tabel (Simpel Aja)

| Tabel | Kolom | Keterangan |
|-------|--------|------------|
| **matkul** | id_matkul, nama | Data mata kuliah |
| **dosen** | id_dosen, nama, no_telp, id_matkul | Data dosen dan matkul yang diajar |
| **prodi** | id_prodi, nama, id_dosen | Data program studi |
| **mahasiswa** | id_mhs, nama, nim, id_prodi | Data mahasiswa |
| **presensi** | id_presensi, id_mhs, id_matkul, tanggal, status | Data kehadiran mahasiswa |

---

## 🔗 Kardinalitas (Hubungan Antar Tabel)

| Relasi | Kardinalitas | Keterangan |
|---------|---------------|------------|
| Prodi → Mahasiswa | 1 : N | Satu prodi punya banyak mahasiswa |
| Dosen → Matkul | 1 : N | Satu dosen bisa ngajar beberapa matkul |
| Mahasiswa → Presensi | 1 : N | Satu mahasiswa bisa punya banyak data presensi |
| Matkul → Presensi | 1 : N | Satu matkul bisa punya banyak data presensi |

---

## 💾 Contoh Mock Data (SQL Insert)
```sql
-- insert matkul
INSERT INTO matkul(nama)
VALUES 
("Basis Data");

-- insert dosen
INSERT INTO dosen(nama,no_telp,id_matkul)
VALUES
("Budi", "081225142601", 1);

-- insert prodi
INSERT INTO prodi(nama,id_dosen)
VALUES 
("Sistem Informasi", 1);

-- dan sebagainya ...
