DROP DATABASE QUANLYKHACHSAN;
CREATE DATABASE QUANLYKHACHSAN;
USE QUANLYKHACHSAN;

CREATE TABLE PHONG (
	ma_phong INT NOT NULL AUTO_INCREMENT,
	ten_phong VARCHAR(255) DEFAULT '',
	don_gia INT,
	loai_phong VARCHAR(4) NOT NULL,
	PRIMARY KEY (ma_phong)
);
CREATE TABLE KHACH (
	ma_khach INT NOT NULL AUTO_INCREMENT,
	ten_khach VARCHAR(255) DEFAULT '',
	CCCD CHAR(20),
	dia_chi VARCHAR(255) DEFAULT '',
	dien_thoai CHAR(20),
	PRIMARY KEY (ma_khach)
);
CREATE TABLE THUEPHONG (
	maHD INT NOT NULL AUTO_INCREMENT,
	ma_khach INT NOT NULL,
	ma_phong INT NOT NULL,
	ngay_den DATE,
	ngay_di DATE,
	so_nguoi INT,
	PRIMARY KEY (maHD),
	FOREIGN KEY (ma_khach) REFERENCES KHACH(ma_khach),
	FOREIGN KEY (ma_phong) REFERENCES PHONG(ma_phong)
);
INSERT INTO PHONG VALUES
(1, "Phong 1", 700000, "A"),
(2, "Phong 2", 600000, "B"),
(3, "Phong 3", 400000, "C"),
(4, "Phong 4", 300000, "D"),
(5, "Phong 5", 200000, "E"),
(6, "Phong 6", 1500000, "VIP1"),
(7, "Phong 7", 1200000, "VIP2"),
(8, "Phong 8", 10000000, "RS"),
(9, "Phong 9", 150000, "A1"),
(10, "Phong 10", 700000, "A2");

INSERT INTO KHACH VALUES
(1, "Nguyen Van Teo", "687631044661", "Tan Phu", 09391026714),
(2, "Le Thi Hoa", "395877727471", "Tan My", 05871057666),
(3, "Tran Thi Thu Thao", "210618379354", "An Phong", 0465782656),
(4, "Le Van Xuan", "884434108213", "Chau Thanh", 0215122225),
(5, "Pham Phuong Dao", "331346844361", "Tien Giang", 05104685413),
(6, "Do Trong Hieu", "266361831515", "Chau Doc", 069109151087),
(7, "Tran Hieu Nghia", "106102637784", "Phu My", 07347551048),
(8, "Chau Ngoc", "108644871071", "Con En", 0171336294),
(9, "Lam Tran Trung", "104998914121", "Vinh Phuc", 0985345858),
(10, "Nguyen Thi Dieu", "217333962959", "Thanh Binh", 08105514585);

INSERT INTO THUEPHONG VALUES
(1, 2, 7, "2023-12-22", "2023-12-30", 7),
(2, 3, 1, "2022-4-5", "2023-4-6", 3),
(3, 8, 8, "2024-1-2", "2024-12-30", 1),
(4, 1, 9, "2023-2-22", "2024-1-2", 5),
(5, 9, 2, "2023-8-1", "2024-6-30", 10);

