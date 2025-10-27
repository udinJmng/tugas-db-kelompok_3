CREATE DATABASE pendidikan;
USE pendidikan;

create table matkul(
    id_matkul int auto_increment primary key,
    nama varchar(255) not null
);

create table dosen(
    id_dosen int auto_increment primary key,
    nama varchar(255) not null,
    no_telp varchar(20),
    id_matkul int not null,
    foreign key (id_matkul) references matkul(id_matkul) on delete cascade on update cascade
);

create table prodi(
    id_prodi int auto_increment primary key,
    nama varchar(255) not null,
    id_dosen int not null,
    foreign key (id_dosen) references dosen(id_dosen) on delete cascade on update cascade
);

create table mahasiswa(
    nim int primary key,
    nama varchar(255) not null,
    id_prodi int not null,
    no_telp varchar(20),
    alamat longtext,
    tl_lahir date default current_date,
    foreign key (id_prodi) references prodi(id_prodi) on delete cascade on update cascade
);

create table jadwal(
    id_jadwal int auto_increment primary key,
    id_matkul int,
    id_prodi int,
    hari enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu'),
    jam_mulai time,
    jam_selesai time,
    foreign key (id_matkul) references matkul(id_matkul) on delete cascade on update cascade,
    foreign key (id_prodi) references prodi(id_prodi) on delete cascade on update cascade
);

create table presensi(
    id_presensi int auto_increment primary key,
    nim int,
    id_matkul int,
    id_prodi int,
    kehadiran enum('Hadir', 'Izin', 'Alpa'),
    foreign key (nim) references mahasiswa(nim) on delete cascade on update cascade,
    foreign key (id_matkul) references matkul(id_matkul) on delete cascade on update cascade,
    foreign key (id_prodi) references prodi(id_prodi) on delete cascade on update cascade
);
