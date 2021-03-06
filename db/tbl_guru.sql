-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `tbl_guru`;
CREATE TABLE `tbl_guru` (
  `nama` varchar(100) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `pemilih_10_ipa` int(11) NOT NULL DEFAULT '0',
  `pemilih_10_ips` int(11) NOT NULL DEFAULT '0',
  `pemilih_11_ipa` int(11) NOT NULL DEFAULT '0',
  `pemilih_11_ips` int(11) NOT NULL DEFAULT '0',
  `pemilih_12_ipa` int(11) NOT NULL DEFAULT '0',
  `pemilih_12_ips` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_guru` (`nama`, `mapel`, `kelas`, `pemilih_10_ipa`, `pemilih_10_ips`, `pemilih_11_ipa`, `pemilih_11_ips`, `pemilih_12_ipa`, `pemilih_12_ips`) VALUES
('Drs. Sri Widadi, M.Hum.',	'Sejarah',	'11_ipa,11_ips,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Dra. Hj. Untari Setyawati, M.Pd.',	'Matematika',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Drs. Surip, S.E., M.Pd.',	'Ekonomi',	'10_ipa,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Drs. Asrori',	'Penjasorkes',	'12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Noviawati',	'Biologi',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. M.M Sri Mulyani',	'Matematika',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Drs. Wahyu Wiranto',	'Matematika',	'10_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Dra. Sri Basuki Sumarahningsih',	'Biologi',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Surati, S.Pd., M.Pd.',	'Penjasorkes',	'10_ipa,10_ips,11_ipa,11_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Hj. Kusuma Wardhani, M.Pd.',	'Fisika',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Drs. Sutarno',	'PKN',	'10_ipa,10_ips,11_ipa,11_ips',	0,	0,	0,	0,	0,	0),
('Hj. Mamik Dasanti, S.Pd., M.Pd.',	'Matematika',	'10_ipa,11_ipa',	0,	0,	0,	0,	0,	0),
('Kustiarjo, S.Pd.',	'Wakasek Sapras / Kimia ',	'11_ipa',	0,	0,	0,	0,	0,	0),
('Seno Djoko Kustanto, S.Pd.',	'Matematika',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Hj. Nanik Murti Prasetyanti',	'Biologi',	'10_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Hj. Indah Tri Esti Mulyantinah',	'Ekonomi / Akuntansi',	'10_ips,11_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Susini',	'Bahasa Indonesia',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Drs. Sudarsono',	'Sosiologi',	'10_ips,11_ips,12_ips',	0,	0,	0,	0,	0,	0),
('Dra. Endang Sulistyowati',	'Matematika',	'10_ipa,11_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Dyah Wulandari',	'Bahasa Inggris',	'10_ipa,10_ips,11_ipa,11_ips',	0,	0,	0,	0,	0,	0),
('Budiman Simbolon, S. PAK.',	'Agama Kristen',	'10_ipa,11_ipa,11_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Drs. H. Sutrisno',	'Agama Islam',	'11_ips,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Drs. Nuril Ahmadi',	'Penjasorkes',	'11_ipa,11_ips,12_ips',	0,	0,	0,	0,	0,	0),
('Dra. Puji Rahayu',	'Sejarah',	'10_ipa,11_ipa,11_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Inayah Damayanti',	'Biologi',	'10_ips,11_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Sri Hartatik, M.Pd.',	'PKn',	'11_ipa,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Dra. Hj. Agustini Susiandari, M.Pd.',	'Fisika',	'11_ipa,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Larja, S.Pd.',	'Bahasa Inggris',	'10_ipa,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Drs. Subandriyo',	'Fisika',	'12_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Eny Nursanti, M.Pd, M.Acc., MBA.',	'Bahasa Inggris',	'11_ipa,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Ika Stri Ratna, S.Pd.',	'Kimia',	'10_ipa,11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Drs. Agus Susilo Erlambang',	'Fisika',	'10_ipa',	0,	0,	0,	0,	0,	0),
('Drs. Bambang Dwi Sasongko, M.Pd.',	'Bahasa Indonesia',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Endang Listyorini, S.S, M.Pd.',	'Sejarah',	'10_ipa,10_ips,11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('H. Bety Suryanto, S.Pd.',	'Fisika',	'12_ipa',	0,	0,	0,	0,	0,	0),
('Said Affandi, S.Pd.',	'Biologi',	'10_ipa,10_ips',	0,	0,	0,	0,	0,	0),
('Dra. Siti Nur Wahyuningsih, M.Pd.',	'Bahasa Indonesia',	'11_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Dra. Lilyk Marliyati',	'PKn',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Mujapar, S.Pd, M.Pd.',	'Wakasek Humas / Mat. ',	'10_ipa,11_ipa',	0,	0,	0,	0,	0,	0),
('Sudaryono, S.Pd.',	'Bahasa Indonesia',	'10_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Parmadi, S.Pd, M.M.',	'Biologi',	'11_ipa,11_ips,12_ips',	0,	0,	0,	0,	0,	0),
('Drs. Barkah Raharja, M.Pd.',	'PKn',	'10_ipa',	0,	0,	0,	0,	0,	0),
('Sri Maryamti, S.Pd.',	'Bahasa Indonesia',	'11_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Sulistyanti, S.Pd.',	'Bahasa Indonesia',	'10_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Drs. Partino',	'Ekonomi / Akuntansi',	'10_ipa,11_ipa',	0,	0,	0,	0,	0,	0),
('Sunarsasi Murti, S.Pd.',	'Kimia',	'10_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Kristina Rahmawati, S.Pd.',	'Ekonomi / Akuntansi',	'10_ipa,10_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Supriyanto, S.Pd, M.Pd.',	'Geografi',	'10_ipa,10_ips,11_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Dwi Agus Primurtini, S.Pd.',	'Bahasa Indonesia',	'10_ips,11_ips',	0,	0,	0,	0,	0,	0),
('Aris Wahyudi,  S.Pd.',	'Geografi',	'12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Wardi, S.Pd.',	'Matematika',	'10_ipa,11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Agus Sutarto, S.Pd, M.Hum.',	'Bahasa Indonesia',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Fibriantie Eka Yani, S.Pd.',	'Matematika',	'10_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Juni Mugirahayu, S.Pd.',	'Geografi',	'10_ips,11_ipa,11_ips',	0,	0,	0,	0,	0,	0),
('Sri Widodo, S.Pd.',	'Wakasek Kesiswaan / Kim. ',	'11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Rahmulyo, S.Pd.',	'Fisika',	'10_ipa,11_ipa,12_ipa',	0,	0,	0,	0,	0,	0),
('Rochmat Widhiyanto, S.Pd.',	'Seni',	'10_ipa,10_ips,11_ips',	0,	0,	0,	0,	0,	0),
('Aries Marwati Triningsih W., S.Pd.',	'Bahasa Jerman',	'10_ipa,10_ips,11_ips',	0,	0,	0,	0,	0,	0),
('Yulianto, S.Ag.',	'Agama Islam',	'10_ipa,10_ips',	0,	0,	0,	0,	0,	0),
('Sri Parminto, S.S, M.Pd.',	'Bahasa Jawa',	'11_ipa,12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Eko Sunarto, S.Pd.',	'Penjasorkes',	'10_ipa,10_ips',	0,	0,	0,	0,	0,	0),
('Dra. Swasti Ambar Indriastuti',	'Bahasa Indonesia',	'10_ipa,11_ipa',	0,	0,	0,	0,	0,	0),
('Erni Lestari Septiawati, S.Pd.',	'Ekonomi',	'11_ips',	0,	0,	0,	0,	0,	0),
('Dyah Retnaningsih,  S.Pd.',	'Sejarah',	'10_ipa,10_ips',	0,	0,	0,	0,	0,	0),
('Susila, S.Pd.',	'Seni Rupa',	'12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Ika Setiyani, S.PdI.',	'Agama Islam',	'11_ipa',	0,	0,	0,	0,	0,	0),
('Ferry Mega Nanda, S.Pd.',	'Seni Budaya',	'12_ipa,12_ips',	0,	0,	0,	0,	0,	0),
('Yuniati Chasanah, S.Pd.',	'Bahasa Jawa',	'10_ipa,11_ipa,11_ips',	0,	0,	0,	0,	0,	0),
('Rudi Permono P., S.Pd.',	'Bahasa Jawa',	'10_ipa',	0,	0,	0,	0,	0,	0),
('Endang Sulistyorini, S.Pd, M.Pd.',	'Bahasa Inggris',	'11_ipa,11_ips',	0,	0,	0,	0,	0,	0),
('Marina Tri Hendhani, S.Pd.',	'Sossiologi',	'10_ips',	0,	0,	0,	0,	0,	0),
('Dra. Agus Artiningsih',	'Bahasa Jawa',	'10_ips',	0,	0,	0,	0,	0,	0),
('Teguh Heru Cahyono, S.S. ',	'Agama Katolik',	'10_ipa,11_ipa,11_ips,12_ipa',	0,	0,	0,	0,	0,	0),
('Supadi, S.Ag.',	'Agama Islam',	'10_ipa,10_ips',	0,	0,	0,	0,	0,	0),
('Sri Suwarni S.Ag.',	'Agama Katolik',	'10_ipa,10_ips',	0,	0,	0,	0,	0,	0),
('Flaviana Sri Wihartinah, S.Pd.',	'Kimia / PMJ',	'12_ipa',	0,	0,	0,	0,	0,	0),
('Yeni Oktaviana Kurnia Sari W, S.Pd.',	'Kimia / PMJ',	'10_ipa',	0,	0,	0,	0,	0,	0),
('Dra. Hj. Najdah Pertiwi',	'Biologi',	'10_ipa,10_ips,11_ipa',	0,	0,	0,	0,	0,	0);

-- 2018-11-04 12:54:19
