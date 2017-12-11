CREATE DATABASE RHBD--CREAMOS LA BASE DE DATOS
GO
USE RHBD --USAMOS LA BASE DE DATOS
GO
--Elaboración de las tablas 
create TABLE Empleado(
--Descripción de los atributos
	idEmpleado INT PRIMARY KEY NOT NULL identity,
	correoElectronico VARCHAR(100) CHECK(correoElectronico LIKE '%@%') NOT NULL,
	pass VARCHAR(50)NOT NULL,
	FkInfoAcdemica INT NOT NULL,
	FkInfoPersonal INT NOT NULL,
	FkInfoLaboral INT NOT NULL,
	CONSTRAINT ConsForeignAcademica FOREIGN KEY (FkInfoAcdemica) REFERENCES InfoAcademica (idAcademica),
	CONSTRAINT ConsForeignPersonal  FOREIGN KEY (FkInfoPersonal) REFERENCES InfoPersonal  (idPersonal),
	CONSTRAINT ConsForeignLaboral   FOREIGN KEY (FkInfoLaboral)  REFERENCES InfoLaboral   (idLaboral)
)
GO

insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (1, 'adaggett0@hao123.com', 'FtXzpwu', 1, 1, 1);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (2, 'kmynett1@tripadvisor.com', 'JCaSit', 2, 2, 2);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (3, 'reastabrook2@dagondesign.com', 'FNYmD5Jsf', 3, 3, 3);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (4, 'oparrin3@sphinn.com', 'TyKbEZq2NS', 4, 4, 4);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (5, 'lshepeard4@github.io', 'jlnaPbPIfRCn', 5, 5, 5);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (6, 'egrahlman5@t.co', '0TTTTn9XgeO', 6, 6, 6);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (7, 'habraham6@domainmarket.com', 'WMd5CqMO4px', 7, 7, 7);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (8, 'rpardon7@skyrock.com', 'dfwVlk2s4NFE', 8, 8, 8);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (9, 'criseborough8@adobe.com', '8dIsOH7KbcyJ', 9, 9, 9);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (10, 'kderwin9@is.gd', 'tCrSOva4a', 10, 10, 10);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (11, 'ebassicka@ft.com', '5wiU6jCx', 11, 11, 11);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (12, 'aclemmensenb@examiner.com', 'NtPhLYcq', 12, 12, 12);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (13, 'tgreesonc@diigo.com', 'z7zfaS', 13, 13, 13);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (14, 'aletfordd@auda.org.au', 'ofpeq7x', 14, 14, 14);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (15, 'dalue@gizmodo.com', 'UhdIMEpmLa', 15, 15, 15);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (16, 'lrosserf@dell.com', 'imnns53VR1p', 16, 16, 16);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (17, 'wkalfg@alibaba.com', 'XzeoNlVVRgP', 17, 17, 17);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (18, 'cfloydh@state.tx.us', 'MlN4CrN', 18, 18, 18);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (19, 'swestreyi@163.com', 'XYNUSxLB1', 19, 19, 19);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (20, 'sstegelj@redcross.org', 'ySs2y6', 20, 20, 20);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (21, 'shulbertk@netvibes.com', 'qCcZiM', 21, 21, 21);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (22, 'jdebischofl@ibm.com', '7ZYu5KYAvoUq', 22, 22, 22);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (23, 'jnaullsm@delicious.com', 'VlUl3uq', 23, 23, 23);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (24, 'erapportn@google.co.uk', 'etC4HsUqN', 24, 24, 24);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (25, 'yleureno@quantcast.com', '6740zDT5oF', 25, 25, 25);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (26, 'cfullomp@constantcontact.com', 'l8KU4mH', 26, 26, 26);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (27, 'hscroggesq@yellowpages.com', '3PDfrvkK', 27, 27, 27);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (28, 'eduleyr@forbes.com', 'amhRXg', 28, 28, 28);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (29, 'bshillabers@plala.or.jp', '1HMHcvne', 29, 29, 29);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (30, 'vjiranekt@census.gov', 'pK0UwrhQ4o9D', 30, 30, 30);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (31, 'rworthingtonu@sogou.com', 'w9wREdsIG', 31, 31, 31);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (32, 'hflorezv@nps.gov', 'rVBVLNYJ', 32, 32, 32);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (33, 'agreethamw@irs.gov', 'Y0bzO1ul', 33, 33, 33);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (34, 'msaywellx@omniture.com', 'xlvFH9q81rX8', 34, 34, 34);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (35, 'dschustery@toplist.cz', 'yXIdjwixXtf', 35, 35, 35);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (36, 'awildz@mit.edu', '17FsOEoQZ5b', 36, 36, 36);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (37, 'sarni10@nifty.com', 'KrzrYE3CSW', 37, 37, 37);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (38, 'emoorcroft11@auda.org.au', 'rQXWDAu8B', 38, 38, 38);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (39, 'ssweed12@dailymotion.com', 'zb5mvC9z', 39, 39, 39);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (40, 'kverna13@usnews.com', 'rYNiVOqSQZ9', 40, 40, 40);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (41, 'balenichev14@vimeo.com', 'BMfUAbnrzmyH', 41, 41, 41);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (42, 'tletten15@ibm.com', 'Es4RBT', 42, 42, 42);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (43, 'alittlefield16@bandcamp.com', 'W1EktZXO', 43, 43, 43);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (44, 'edollen17@epa.gov', 'zX3Yc1LGp73', 44, 44, 44);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (45, 'cwatters18@google.es', 'WNnemU', 45, 45, 45);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (46, 'dedmonston19@yellowbook.com', '0BX6nKYasV', 46, 46, 46);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (47, 'lnavan1a@meetup.com', '4x2KPx', 47, 47, 47);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (48, 'nwoodage1b@moonfruit.com', 'vX4hlRdDj', 48, 48, 48);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (49, 'sclamp1c@virginia.edu', 'TIHRMD', 49, 49, 49);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (50, 'esibson1d@cmu.edu', 'CMIx4Azg', 50, 50, 50);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (51, 'gcolly1e@nature.com', '5E1Kp6QVM', 51, 51, 51);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (52, 'mrosbrough1f@jigsy.com', '5kJuD0rGWAl', 52, 52, 52);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (53, 'ddolbey1g@xing.com', 'wWHVZDC8', 53, 53, 53);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (54, 'lbonny1h@typepad.com', 'Fp7Y8n', 54, 54, 54);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (55, 'eoven1i@paginegialle.it', 'BEyfnp3tp', 55, 55, 55);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (56, 'jsparhawk1j@deviantart.com', 'sOLSQR4', 56, 56, 56);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (57, 'dreglar1k@dyndns.org', 'PdzZ8m', 57, 57, 57);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (58, 'bsudron1l@sphinn.com', 'jCR40FVoQ', 58, 58, 58);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (59, 'cduffit1m@pen.io', 'rthqzY1cS', 59, 59, 59);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (60, 'bbartley1n@myspace.com', 'rICPkMI4', 60, 60, 60);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (61, 'gminet1o@gov.uk', '1q1CSX', 61, 61, 61);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (62, 'tjessen1p@usgs.gov', 'tb4lrIeqr', 62, 62, 62);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (63, 'tgrayne1q@senate.gov', 'BEMTegsdZ7e', 63, 63, 63);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (64, 'mgraser1r@parallels.com', 'lsLqm6oB', 64, 64, 64);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (65, 'uhartin1s@skype.com', 'b44AO1pqYE', 65, 65, 65);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (66, 'hrupert1t@cnet.com', 'NIsI0vGhfvcO', 66, 66, 66);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (67, 'mmabson1u@microsoft.com', 'uz4Be8eRz', 67, 67, 67);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (68, 'rczajka1v@desdev.cn', '3qCnPsDrcK', 68, 68, 68);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (69, 'aleckey1w@amazon.com', '3RIbWlFdbsy', 69, 69, 69);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (70, 'cdisley1x@eventbrite.com', '5Z6NKZXDN', 70, 70, 70);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (71, 'wkippin1y@livejournal.com', '33mAroyJddD', 71, 71, 71);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (72, 'rshilburne1z@utexas.edu', 'SUoXEOzYb9fH', 72, 72, 72);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (73, 'kraubenheim20@ibm.com', '9BKV8Pt', 73, 73, 73);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (74, 'anorres21@bloomberg.com', 'R3TTzV89wF', 74, 74, 74);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (75, 'jgaynsford22@unblog.fr', 'bW1AhH', 75, 75, 75);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (76, 'kjakubovics23@godaddy.com', 'apV4zl0vPFJ', 76, 76, 76);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (77, 'mseine24@vinaora.com', 'ObxkHE1CA', 77, 77, 77);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (78, 'burvoy25@sina.com.cn', 'zOEYfQDN9pZ', 78, 78, 78);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (79, 'ckynder26@illinois.edu', 'tjwkd2FoMNj', 79, 79, 79);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (80, 'sgebhard27@intel.com', 'xzl2TFvL0eGw', 80, 80, 80);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (81, 'ptrencher28@redcross.org', 'GOGsft3W', 81, 81, 81);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (82, 'derlam29@redcross.org', '26bkxyMCe', 82, 82, 82);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (83, 'mkesten2a@163.com', 'RskZoYVtb', 83, 83, 83);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (84, 'sloadsman2b@xrea.com', '6vvKom', 84, 84, 84);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (85, 'mjoplin2c@blog.com', 'BaJNb4Tr8', 85, 85, 85);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (86, 'lcorrison2d@msu.edu', 'Qea0o7zS', 86, 86, 86);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (87, 'mburdge2e@abc.net.au', 'e5UNMuWfIPd', 87, 87, 87);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (88, 'bdonhardt2f@deviantart.com', 'KiD3L93VTHb', 88, 88, 88);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (89, 'hgoodhand2g@about.com', 'faJS5uh5so', 89, 89, 89);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (90, 'lwardle2h@homestead.com', 'T8TlaiIiBWBh', 90, 90, 90);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (91, 'pgallaccio2i@pcworld.com', 'ZwYasmW', 91, 91, 91);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (92, 'gmaccallam2j@patch.com', 't7va7Ozq', 92, 92, 92);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (93, 'gstrass2k@zimbio.com', 'AmDWaM', 93, 93, 93);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (94, 'imasterman2l@homestead.com', 'c3pLmm', 94, 94, 94);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (95, 'gbarrus2m@flavors.me', 'nOpLTFj0S', 95, 95, 95);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (96, 'igreenwood2n@photobucket.com', 'spWNUMlZETA', 96, 96, 96);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (97, 'mmacbean2o@360.cn', 'bNy9UDLkvCrK', 97, 97, 97);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (98, 'dhucks2p@reddit.com', 'fHHpgIi1me', 98, 98, 98);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (99, 'abonnefin2q@discovery.com', 'EaCYLyl7B', 99, 99, 99);
insert into Empleado (idEmpleado, correoElectronico, pass, FkInfoAcdemica, FkInfoPersonal, FkInfoLaboral) values (100, 'alowthian2r@sakura.ne.jp', 'G4lNI1', 100, 100, 100);
GO

CREATE TABLE InfoAcademica(
--Descripción de los atributos
	idAcademica INT PRIMARY KEY NOT NULL,
	nivelIngles INT NOT NULL,
	cedula VARCHAR(50) ,
	carreraEngreso VARCHAR(40) ,
	especialidad Varchar(30) ,
	titulacion BIT ,
	fechaEgreso DATE	
)
GO

insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (1, 85, '', 'gestión empresarial', 'Legal', 0, '3/29/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (2, 64, '', 'logistica', 'Business Development', 0, '5/21/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (3, 54, '', 'sistemas computacionales', 'Legal', 0, '5/21/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (4, 65, '', 'logistica', 'Legal', 1, '4/5/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (5, 31, '', 'logistica', 'Product Management', 1, '5/7/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (6, 57, '', 'logistica', 'Business Development', 0, '3/30/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (7, 82, '', 'sistemas computacionales', 'Human Resources', 0, '4/21/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (8, 34, '', 'logistica', 'Services', 1, '10/24/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (9, 15, '', 'gestión empresarial', 'Marketing', 1, '12/15/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (10, 99, '', 'industrial', 'Training', 0, '5/2/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (11, 20, '', 'industrial', 'Marketing', 0, '1/1/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (12, 16, '', 'sistemas computacionales', 'Product Management', 0, '9/28/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (13, 84, '', 'industrial', 'Legal', 0, '8/18/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (14, 39, '', 'industrial', 'Services', 0, '8/27/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (15, 87, '', 'industrial', 'Legal', 0, '1/29/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (16, 61, '', 'industrial', 'Services', 1, '8/16/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (17, 20, '', 'industrial', 'Marketing', 0, '4/2/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (18, 31, '', 'industrial', 'Human Resources', 0, '10/8/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (19, 10, '', 'sistemas computacionales', 'Product Management', 0, '5/31/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (20, 28, '', 'logistica', 'Business Development', 1, '1/17/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (21, 45, '', 'sistemas computacionales', 'Product Management', 1, '1/20/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (22, 45, '', 'sistemas computacionales', 'Services', 1, '10/30/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (23, 61, '', 'industrial', 'Services', 1, '12/15/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (24, 65, '', 'sistemas computacionales', 'Research and Development', 1, '2/23/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (25, 65, '', 'industrial', 'Legal', 1, '6/2/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (26, 74, '', 'logistica', 'Research and Development', 1, '4/22/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (27, 77, '', 'gestión empresarial', 'Marketing', 0, '2/27/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (28, 32, '', 'industrial', 'Legal', 1, '10/23/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (29, 56, '', 'logistica', 'Services', 1, '5/8/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (30, 69, '', 'industrial', 'Support', 0, '11/27/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (31, 30, '', 'sistemas computacionales', 'Product Management', 1, '3/1/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (32, 7, '', 'industrial', 'Business Development', 1, '6/26/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (33, 94, '', 'sistemas computacionales', 'Services', 0, '7/2/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (34, 28, '', 'sistemas computacionales', 'Product Management', 0, '6/29/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (35, 88, '', 'logistica', 'Legal', 1, '10/14/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (36, 99, '', 'gestión empresarial', 'Marketing', 0, '2/13/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (37, 51, '', 'gestión empresarial', 'Human Resources', 1, '6/17/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (38, 27, '', 'logistica', 'Support', 1, '6/20/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (39, 20, '', 'gestión empresarial', 'Marketing', 1, '12/8/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (40, 21, '', 'sistemas computacionales', 'Support', 1, '4/4/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (41, 73, '', 'sistemas computacionales', 'Human Resources', 1, '7/29/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (42, 57, '', 'logistica', 'Services', 0, '4/28/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (43, 34, '', 'logistica', 'Legal', 0, '12/14/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (44, 6, '', 'industrial', 'Training', 0, '10/16/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (45, 56, '', 'sistemas computacionales', 'Sales', 1, '12/22/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (46, 58, '', 'logistica', 'Engineering', 1, '7/18/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (47, 68, '', 'gestión empresarial', 'Training', 0, '12/13/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (48, 70, '', 'industrial', 'Sales', 1, '4/14/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (49, 56, '', 'industrial', 'Accounting', 1, '12/24/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (50, 71, '', 'logistica', 'Accounting', 0, '7/27/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (51, 99, '', 'logistica', 'Marketing', 1, '7/12/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (52, 71, '', 'logistica', 'Engineering', 1, '12/3/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (53, 61, '', 'logistica', 'Product Management', 1, '11/30/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (54, 85, '', 'industrial', 'Business Development', 1, '7/17/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (55, 81, '', 'gestión empresarial', 'Research and Development', 1, '11/21/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (56, 91, '', 'logistica', 'Sales', 0, '10/10/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (57, 38, '', 'gestión empresarial', 'Engineering', 0, '9/24/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (58, 0, '', 'gestión empresarial', 'Engineering', 1, '6/17/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (59, 30, '', 'sistemas computacionales', 'Support', 0, '4/9/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (60, 64, '', 'industrial', 'Support', 0, '9/14/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (61, 53, '', 'logistica', 'Accounting', 1, '10/19/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (62, 91, '', 'sistemas computacionales', 'Research and Development', 0, '5/3/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (63, 18, '', 'sistemas computacionales', 'Research and Development', 0, '7/27/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (64, 71, '', 'sistemas computacionales', 'Accounting', 1, '11/4/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (65, 84, '', 'industrial', 'Legal', 1, '11/29/2016');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (66, 45, '', 'gestión empresarial', 'Accounting', 0, '11/24/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (67, 69, '', 'gestión empresarial', 'Services', 0, '1/10/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (68, 51, '', 'logistica', 'Research and Development', 0, '2/2/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (69, 43, '', 'sistemas computacionales', 'Services', 0, '2/5/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (70, 40, '', 'gestión empresarial', 'Training', 1, '2/1/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (71, 46, '', 'gestión empresarial', 'Human Resources', 1, '5/8/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (72, 7, '', 'industrial', 'Support', 0, '7/16/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (73, 4, '', 'logistica', 'Product Management', 0, '1/31/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (74, 79, '', 'logistica', 'Research and Development', 0, '7/16/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (75, 45, '', 'industrial', 'Support', 0, '10/3/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (76, 8, '', 'sistemas computacionales', 'Human Resources', 1, '2/10/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (77, 97, '', 'gestión empresarial', 'Marketing', 1, '11/8/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (78, 52, '', 'logistica', 'Services', 0, '8/22/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (79, 4, '', 'logistica', 'Research and Development', 1, '3/3/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (80, 2, '', 'sistemas computacionales', 'Product Management', 1, '10/17/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (81, 33, '', 'gestión empresarial', 'Business Development', 1, '5/7/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (82, 94, '', 'logistica', 'Business Development', 0, '9/4/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (83, 39, '', 'industrial', 'Research and Development', 0, '9/13/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (84, 88, '', 'gestión empresarial', 'Accounting', 1, '3/21/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (85, 18, '', 'sistemas computacionales', 'Product Management', 1, '9/23/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (86, 65, '', 'gestión empresarial', 'Product Management', 1, '3/4/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (87, 32, '', 'gestión empresarial', 'Sales', 1, '5/8/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (88, 23, '', 'gestión empresarial', 'Product Management', 1, '5/30/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (89, 27, '', 'sistemas computacionales', 'Business Development', 0, '7/1/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (90, 62, '', 'sistemas computacionales', 'Training', 0, '5/18/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (91, 43, '', 'industrial', 'Engineering', 1, '1/10/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (92, 53, '', 'industrial', 'Product Management', 1, '8/11/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (93, 71, '', 'sistemas computacionales', 'Training', 1, '1/22/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (94, 85, '', 'gestión empresarial', 'Support', 0, '2/14/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (95, 86, '', 'sistemas computacionales', 'Product Management', 1, '3/15/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (96, 63, '', 'industrial', 'Marketing', 0, '1/19/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (97, 23, '', 'industrial', 'Product Management', 1, '5/30/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (98, 35, '', 'sistemas computacionales', 'Marketing', 0, '2/6/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (99, 32, '', 'sistemas computacionales', 'Services', 0, '9/26/2017');
insert into InfoAcademica (idAcademica, nivelIngles, cedula, carreraEngreso, especialidad, titulacion, fechaEgreso) values (100, 64, '', 'industrial', 'Marketing', 0, '4/17/2017');
GO
CREATE TABLE InfoLaboral(
--Descripción de los atributos
	idLaboral INT PRIMARY KEY NOT NULL,
	turno Varchar(15) NOT NULL,
	fechaIngreso DATE NOT NULL,
	sueldo MONEY  CHECK(sueldo>0) NOT NULL,
	puesto VARCHAR(100) NOT NULL
)
GO 


insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (1, 'Vespertino', '', '$17603.15', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (2, 'Vespertino', '10/20/2017', '$29931.94', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (3, 'Matutino', '10/20/2017', '$30099.30', 'Training');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (4, 'Matutino', '5/12/2017', '$49373.05', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (5, 'Vespertino', '2/26/2017', '$49183.26', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (6, 'Vespertino', '5/7/2017', '$9327.13', 'Support');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (7, 'Matutino', '6/7/2017', '$44706.78', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (8, 'Vespertino', '7/13/2017', '$42210.92', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (9, 'Vespertino', '10/22/2017', '$42402.69', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (10, 'Vespertino', '7/29/2017', '$9195.02', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (11, 'Matutino', '3/25/2017', '$44611.62', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (12, 'Vespertino', '3/21/2017', '$1879.74', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (13, 'Vespertino', '3/2/2017', '$22952.99', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (14, 'Vespertino', '3/26/2017', '$21732.68', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (15, 'Vespertino', '1/28/2017', '$10182.17', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (16, 'Vespertino', '9/30/2017', '$18256.20', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (17, 'Matutino', '11/12/2017', '$13469.33', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (18, 'Matutino', '8/25/2017', '$9014.99', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (19, 'Vespertino', '1/25/2017', '$12642.68', 'Training');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (20, 'Vespertino', '6/2/2017', '$8634.83', 'Support');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (21, 'Vespertino', '5/31/2017', '$34167.72', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (22, 'Vespertino', '7/26/2017', '$35053.48', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (23, 'Matutino', '8/21/2017', '$7803.85', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (24, 'Matutino', '11/13/2017', '$8759.54', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (25, 'Vespertino', '6/26/2017', '$16207.01', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (26, 'Vespertino', '12/7/2016', '$17782.94', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (27, 'Vespertino', '6/24/2017', '$43348.62', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (28, 'Vespertino', '6/16/2017', '$37654.79', 'Training');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (29, 'Matutino', '6/3/2017', '$30593.39', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (30, 'Matutino', '9/28/2017', '$22402.44', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (31, 'Matutino', '10/27/2017', '$40105.07', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (32, 'Vespertino', '12/1/2016', '$45258.53', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (33, 'Vespertino', '3/6/2017', '$24668.13', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (34, 'Vespertino', '4/21/2017', '$6700.24', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (35, 'Vespertino', '2/12/2017', '$38578.70', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (36, 'Matutino', '11/10/2017', '$3019.43', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (37, 'Vespertino', '12/1/2016', '$27923.48', 'Training');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (38, 'Vespertino', '1/26/2017', '$15718.01', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (39, 'Matutino', '6/18/2017', '$16104.54', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (40, 'Matutino', '8/2/2017', '$15509.68', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (41, 'Matutino', '9/26/2017', '$34736.79', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (42, 'Matutino', '6/9/2017', '$24286.70', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (43, 'Matutino', '2/3/2017', '$45659.85', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (44, 'Vespertino', '5/29/2017', '$21843.45', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (45, 'Vespertino', '8/21/2017', '$19170.32', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (46, 'Vespertino', '5/19/2017', '$42326.43', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (47, 'Matutino', '1/25/2017', '$22241.50', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (48, 'Vespertino', '3/23/2017', '$2879.17', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (49, 'Vespertino', '7/8/2017', '$49488.85', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (50, 'Matutino', '11/17/2017', '$14322.15', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (51, 'Matutino', '8/16/2017', '$34748.32', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (52, 'Matutino', '7/16/2017', '$3094.81', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (53, 'Vespertino', '8/20/2017', '$41401.25', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (54, 'Vespertino', '10/6/2017', '$7271.28', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (55, 'Vespertino', '9/23/2017', '$22266.18', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (56, 'Matutino', '2/17/2017', '$45917.22', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (57, 'Vespertino', '7/13/2017', '$31319.38', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (58, 'Matutino', '1/7/2017', '$36122.91', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (59, 'Matutino', '6/18/2017', '$20005.73', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (60, 'Matutino', '8/19/2017', '$31370.97', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (61, 'Vespertino', '5/9/2017', '$922.55', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (62, 'Matutino', '9/19/2017', '$10230.55', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (63, 'Vespertino', '11/17/2017', '$40261.70', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (64, 'Vespertino', '7/5/2017', '$32879.20', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (65, 'Matutino', '3/10/2017', '$1258.37', 'Business Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (66, 'Matutino', '3/26/2017', '$17096.22', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (67, 'Vespertino', '1/17/2017', '$17205.24', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (68, 'Matutino', '2/4/2017', '$32090.37', 'Training');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (69, 'Vespertino', '10/9/2017', '$9929.09', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (70, 'Vespertino', '6/11/2017', '$29236.21', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (71, 'Vespertino', '11/19/2017', '$19502.65', 'Services');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (72, 'Matutino', '3/14/2017', '$32847.07', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (73, 'Vespertino', '11/2/2017', '$34255.71', 'Training');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (74, 'Vespertino', '1/1/2017', '$33275.46', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (75, 'Vespertino', '3/22/2017', '$35646.67', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (76, 'Vespertino', '5/1/2017', '$37473.07', 'Support');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (77, 'Matutino', '2/28/2017', '$36688.90', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (78, 'Vespertino', '1/6/2017', '$19670.62', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (79, 'Vespertino', '7/17/2017', '$41717.75', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (80, 'Matutino', '11/30/2016', '$5466.34', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (81, 'Vespertino', '12/5/2016', '$27452.55', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (82, 'Matutino', '6/18/2017', '$15980.45', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (83, 'Matutino', '7/12/2017', '$36874.94', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (84, 'Vespertino', '12/16/2016', '$16427.84', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (85, 'Vespertino', '2/16/2017', '$38494.78', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (86, 'Vespertino', '3/14/2017', '$40341.90', 'Engineering');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (87, 'Vespertino', '6/19/2017', '$9066.98', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (88, 'Vespertino', '1/12/2017', '$31786.34', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (89, 'Matutino', '7/29/2017', '$9962.68', 'Research and Development');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (90, 'Matutino', '3/12/2017', '$37074.16', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (91, 'Matutino', '12/30/2016', '$25336.10', 'Accounting');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (92, 'Vespertino', '9/15/2017', '$7977.50', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (93, 'Matutino', '9/21/2017', '$8766.58', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (94, 'Vespertino', '8/21/2017', '$28503.00', 'Marketing');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (95, 'Matutino', '4/17/2017', '$104.55', 'Sales');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (96, 'Vespertino', '10/29/2017', '$48149.61', 'Product Management');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (97, 'Vespertino', '1/25/2017', '$9524.40', 'Support');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (98, 'Vespertino', '7/28/2017', '$7628.85', 'Legal');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (99, 'Matutino', '12/31/2016', '$23635.47', 'Human Resources');
insert into InfoLaboral (idLaboral, turno, fechaIngreso, sueldo, puesto ) values (100, 'Vespertino', '11/7/2017', '$11859.05', 'Product Management');
GO

CREATE TABLE InfoPersonal(
--Descripción de los atributos
	idPersonal INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	appPaterno VARCHAR(30) NOT NULL,
	appMaterno VARCHAR(30) NOT NULL,
	telefono Varchar(15) NOT NULL,
	FkDomicilio INT NOT NULL,
	FkInfoMedica INT NOT NULL
	CONSTRAINT ConsForeignDomicilio FOREIGN KEY (FkDomicilio) REFERENCES Domicilio (idDomicilio),
	CONSTRAINT ConsForeignInfoMedica FOREIGN KEY (FkInfoMedica) REFERENCES InfoMedica (idMedica)
)
GO

insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (1, 'Farleigh', 'Yakobowitz', 'Keighley', '7897703232', 1, 1);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (2, 'Nahum', 'Kellen', 'Gonthard', '3779627238', 2, 2);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (3, 'Caritta', 'Newlin', 'Timewell', '4806791413', 3, 3);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (4, 'Dominga', 'Consterdine', 'Fullom', '8704644769', 4, 4);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (5, 'Lynsey', 'Darque', 'Johnke', '4277584145', 5, 5);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (6, 'Clarabelle', 'Kluger', 'Skitral', '5779668024', 6, 6);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (7, 'Alberto', 'Charle', 'Eatock', '3979040776', 7, 7);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (8, 'Roxanne', 'Bartali', 'Cleatherow', '5545791574', 8, 8);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (9, 'Cheri', 'Spikins', 'Kleszinski', '7524567243', 9, 9);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (10, 'Henriette', 'Scrimgeour', 'MacLachlan', '7558165098', 10, 10);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (11, 'George', 'Brinson', 'Abrahamowitcz', '9502045667', 11, 11);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (12, 'Carolyne', 'Surguine', 'Chadwyck', '5436809121', 12, 12);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (13, 'Antone', 'Batkin', 'Weatherhill', '5129007644', 13, 13);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (14, 'Alfi', 'Pohl', 'McKerrow', '2128169593', 14, 14);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (15, 'Nicolai', 'Stanlock', 'Pococke', '3843224843', 15, 15);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (16, 'Lela', 'Giroldo', 'Gimeno', '9553659978', 16, 16);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (17, 'Claudetta', 'Dumini', 'Ruf', '3878042256', 17, 17);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (18, 'Clea', 'Morter', 'Crut', '7023029353', 18, 18);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (19, 'Baron', 'Snepp', 'Bushen', '6534425130', 19, 19);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (20, 'Melina', 'Veare', 'Carley', '1287387821', 20, 20);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (21, 'Sarena', 'Andor', 'Tschursch', '2132554203', 21, 21);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (22, 'Porty', 'Dunkinson', 'Ahlin', '9721736268', 22, 22);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (23, 'Chrysa', 'Vedekhin', 'Haylor', '2117503023', 23, 23);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (24, 'Werner', 'Niset', 'Newcome', '1506157596', 24, 24);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (25, 'Sukey', 'Espinho', 'Onions', '9565642783', 25, 25);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (26, 'Tony', 'Briiginshaw', 'Simcoe', '6796175434', 26, 26);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (27, 'Bryan', 'O''Fearguise', 'Catterill', '6923029470', 27, 27);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (28, 'Teddie', 'Rosser', 'Dauncey', '4779046350', 28, 28);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (29, 'Simone', 'Quayle', 'Caulliere', '2765352838', 29, 29);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (30, 'Raquela', 'Brindle', 'Vila', '1628084566', 30, 30);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (31, 'Johnnie', 'Sharville', 'Hanway', '7141380743', 31, 31);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (32, 'Norrie', 'Rowston', 'Garard', '9056052752', 32, 32);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (33, 'Wallis', 'Cornthwaite', 'Fydoe', '7437641061', 33, 33);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (34, 'Aubrey', 'Carlet', 'Mochar', '6891520665', 34, 34);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (35, 'Junina', 'Tolerton', 'Cockings', '1645796830', 35, 35);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (36, 'Ambrosio', 'Cuffin', 'Bredes', '3684295282', 36, 36);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (37, 'Port', 'Goacher', 'Twede', '2793730487', 37, 37);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (38, 'Christel', 'Wadlow', 'Frunks', '1259466711', 38, 38);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (39, 'Waneta', 'Clothier', 'Eisig', '8255837652', 39, 39);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (40, 'Taffy', 'Rhymes', 'Greatbach', '7998568876', 40, 40);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (41, 'Eberhard', 'Gawkes', 'Hiseman', '8249609840', 41, 41);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (42, 'Milena', 'Stollberger', 'Bouchier', '9247124909', 42, 42);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (43, 'Elsy', 'Soot', 'Casazza', '8698411829', 43, 43);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (44, 'Kalindi', 'Marns', 'Helsdon', '8157628079', 44, 44);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (45, 'Patrick', 'Ghion', 'Jaslem', '5071808329', 45, 45);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (46, 'Wilek', 'Nield', 'Apperley', '7118497370', 46, 46);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (47, 'Kaia', 'Matzke', 'Errigo', '2027481177', 47, 47);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (48, 'Annadiane', 'Twidle', 'Dymond', '2111106748', 48, 48);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (49, 'Alano', 'Quilty', 'Grebner', '8128002482', 49, 49);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (50, 'Nellie', 'Fermer', 'Breissan', '4615392640', 50, 50);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (51, 'Walliw', 'Blundell', 'Yeoman', '8759541710', 51, 51);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (52, 'Jenelle', 'Rubartelli', 'Hamberston', '2478716908', 52, 52);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (53, 'Lanae', 'Siviter', 'Fanshaw', '6837544644', 53, 53);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (54, 'Tori', 'Brazelton', 'Sprosson', '7252787826', 54, 54);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (55, 'Mahmud', 'Meyrick', 'Sikora', '3485940978', 55, 55);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (56, 'Rainer', 'Sellars', 'Kuhnhardt', '1801921146', 56, 56);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (57, 'Guillemette', 'Gillum', 'Butland', '6955308423', 57, 57);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (58, 'Nat', 'Maric', 'Blasiak', '7624139258', 58, 58);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (59, 'Cecily', 'Blodgett', 'Klimmek', '4559737244', 59, 59);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (60, 'Giovanna', 'Benzing', 'Demko', '3094474918', 60, 60);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (61, 'Kellina', 'Kidde', 'Newlands', '5325003443', 61, 61);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (62, 'Evvie', 'Dybald', 'Stapforth', '9428617492', 62, 62);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (63, 'Patrick', 'Cafferty', 'Portail', '5563073081', 63, 63);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (64, 'Jabez', 'Asgodby', 'Rudolf', '3769787609', 64, 64);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (65, 'Natalie', 'McMillam', 'Wynn', '3686428027', 65, 65);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (66, 'Lorita', 'Fossett', 'Crowcombe', '6203244102', 66, 66);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (67, 'Mathian', 'Blackler', 'Bainbrigge', '3338012308', 67, 67);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (68, 'Rollo', 'Thornewell', 'Lehrian', '2549771418', 68, 68);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (69, 'Nye', 'Havesides', 'Kloska', '3841192414', 69, 69);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (70, 'Angelo', 'Stokey', 'Ferrar', '3108940288', 70, 70);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (71, 'Hastings', 'Fawlkes', 'Lyffe', '6391587897', 71, 71);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (72, 'Inez', 'Finlan', 'Pavyer', '7552515986', 72, 72);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (73, 'Harper', 'Landsman', 'Willerton', '1634626758', 73, 73);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (74, 'Ida', 'Laverack', 'Shankle', '7821731150', 74, 74);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (75, 'Ellissa', 'Swindell', 'Kerans', '5117822504', 75, 75);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (76, 'Mychal', 'Burnyeat', 'Stilwell', '7018335635', 76, 76);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (77, 'Bram', 'Hofler', 'Eickhoff', '8928314425', 77, 77);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (78, 'Arvin', 'Cosin', 'McKeurtan', '3309435577', 78, 78);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (79, 'Rosemaria', 'Baxstare', 'Malthouse', '1302170976', 79, 79);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (80, 'Irv', 'Unworth', 'Crippin', '1227939090', 80, 80);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (81, 'Minerva', 'Gann', 'Williscroft', '3838677363', 81, 81);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (82, 'Leslie', 'Moysey', 'Allsup', '3543807298', 82, 82);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (83, 'Gerrie', 'Walkey', 'Noddings', '8081253961', 83, 83);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (84, 'Danyette', 'Steely', 'Patient', '3524703156', 84, 84);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (85, 'Barry', 'Benterman', 'Prise', '8338980606', 85, 85);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (86, 'Simmonds', 'Greenland', 'Wainwright', '6165171648', 86, 86);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (87, 'Galvan', 'Crowdace', 'Conner', '7348880113', 87, 87);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (88, 'Gertrud', 'Grenshields', 'Cobb', '9213138050', 88, 88);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (89, 'Danica', 'Maddaford', 'Hansemann', '6459101565', 89, 89);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (90, 'Melosa', 'Beckers', 'Huet', '3201321601', 90, 90);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (91, 'Annabal', 'McLae', 'Coskerry', '1629623176', 91, 91);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (92, 'Ginger', 'Lillecrap', 'Baudinelli', '7354969873', 92, 92);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (93, 'Thain', 'Snaden', 'Easton', '7479758134', 93, 93);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (94, 'Kennie', 'Mussettini', 'Metrick', '2564200294', 94, 94);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (95, 'Max', 'Lemmon', 'Flori', '8649563649', 95, 95);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (96, 'Theda', 'Neal', 'Abraham', '2523391636', 96, 96);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (97, 'Gaspar', 'Keely', 'Kobierzycki', '9102441721', 97, 97);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (98, 'Ulysses', 'Brockwell', 'Kenen', '6684982085', 98, 98);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (99, 'Cyril', 'Bednall', 'Geer', '4058651172', 99, 99);
insert into InfoPersonal (idPersonal, nombre, appPaterno, appMaterno, telefono, FkDomicilio, FkInfoMedica) values (100, 'Celle', 'Maddy', 'Jurges', '7226693786', 100, 100);
GO

CREATE TABLE Domicilio(
--Descripción de los atributos
	idDomicilio INT PRIMARY KEY NOT NULL,
	estado VARCHAR(20) NOT NULL,
	ciudad VARCHAR(30) NOT NULL,
	pais VARCHAR(20) NOT NULL,
	codigoPostal VARCHAR(10) NOT NULL,
	numeroExt VARCHAR(10) NOT NULL,
	numeroInt VARCHAR(10) ,
	calle VARCHAR(50) NOT NULL,
	colonia VARCHAR(50) NOT NULL
)
GO

insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (1, 'coahuila', 'torreon', 'mexico', 72594, 412, 6182, '7th', 'Bowman');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (2, 'coahuila', 'francisco I. Madero', 'mexico', 52816, 3440, 6054, 'Oakridge', 'Judy');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (3, 'coahuila', 'san pedro', 'mexico', 64429, 3638, 6738, 'Commercial', 'Westend');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (4, 'coahuila', 'torreon', 'mexico', 94272, 7517, 2106, 'Village', 'Summerview');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (5, 'coahuila', 'francisco I. Madero', 'mexico', 91652, 8445, 6719, 'Arkansas', 'Muir');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (6, 'coahuila', 'francisco I. Madero', 'mexico', 94308, 4651, 3192, 'Londonderry', 'Oneill');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (7, 'coahuila', 'francisco I. Madero', 'mexico', 93703, 2880, 7574, 'Tomscot', 'Birchwood');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (8, 'coahuila', 'san pedro', 'mexico', 56455, 465, 132, 'Drewry', 'Graedel');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (9, 'coahuila', 'francisco I. Madero', 'mexico', 56844, 6263, 667, 'Barby', 'Namekagon');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (10, 'coahuila', 'san pedro', 'mexico', 96687, 2290, 7031, 'Ridgeview', 'Kinsman');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (11, 'coahuila', 'francisco I. Madero', 'mexico', 79646, 4251, 479, 'Dakota', 'Anzinger');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (12, 'coahuila', 'san pedro', 'mexico', 56851, 7636, 4882, 'Heath', 'Aberg');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (13, 'coahuila', 'torreon', 'mexico', 88450, 5099, 2477, 'Manufacturers', 'Sage');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (14, 'coahuila', 'francisco I. Madero', 'mexico', 99798, 92, 2699, 'Vernon', 'Carey');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (15, 'coahuila', 'san pedro', 'mexico', 86630, 2905, 3152, 'Dahle', 'Loftsgordon');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (16, 'coahuila', 'francisco I. Madero', 'mexico', 63338, 6067, 4257, 'Sullivan', 'Westend');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (17, 'coahuila', 'francisco I. Madero', 'mexico', 56298, 6729, 3453, 'Eliot', 'Leroy');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (18, 'coahuila', 'torreon', 'mexico', 81402, 560, 2718, 'Chinook', 'Nancy');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (19, 'coahuila', 'san pedro', 'mexico', 78738, 1100, 2218, 'Talmadge', 'Lotheville');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (20, 'coahuila', 'torreon', 'mexico', 71380, 1415, 2626, 'West', 'Londonderry');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (21, 'coahuila', 'torreon', 'mexico', 70528, 6297, 347, 'Meadow Ridge', 'Eagle Crest');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (22, 'coahuila', 'francisco I. Madero', 'mexico', 57988, 1473, 4532, 'Ridge Oak', 'Bashford');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (23, 'coahuila', 'torreon', 'mexico', 89013, 472, 1477, 'Hansons', 'Anthes');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (24, 'coahuila', 'san pedro', 'mexico', 76206, 4704, 7091, 'Hansons', 'Delladonna');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (25, 'coahuila', 'san pedro', 'mexico', 68260, 37, 2605, 'Division', 'Ilene');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (26, 'coahuila', 'francisco I. Madero', 'mexico', 56061, 3883, 5412, 'Columbus', 'Fuller');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (27, 'coahuila', 'torreon', 'mexico', 72327, 4616, 1351, 'Orin', 'Sullivan');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (28, 'coahuila', 'francisco I. Madero', 'mexico', 67100, 6498, 6682, 'Blue Bill Park', 'Bellgrove');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (29, 'coahuila', 'torreon', 'mexico', 54017, 1069, 2335, 'Green', 'Marquette');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (30, 'coahuila', 'francisco I. Madero', 'mexico', 74188, 4000, 90, 'Hauk', 'Vera');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (31, 'coahuila', 'torreon', 'mexico', 74367, 5252, 5262, 'Truax', 'Magdeline');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (32, 'coahuila', 'san pedro', 'mexico', 57602, 8245, 6028, 'Boyd', 'Basil');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (33, 'coahuila', 'torreon', 'mexico', 84159, 1986, 2564, 'Toban', 'Heath');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (34, 'coahuila', 'francisco I. Madero', 'mexico', 89255, 5, 3762, 'Cascade', 'Commercial');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (35, 'coahuila', 'san pedro', 'mexico', 74567, 2005, 5995, 'Southridge', 'Linden');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (36, 'coahuila', 'san pedro', 'mexico', 78122, 6645, 5608, 'Surrey', 'Valley Edge');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (37, 'coahuila', 'francisco I. Madero', 'mexico', 84689, 3105, 855, 'Prairie Rose', 'Bobwhite');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (38, 'coahuila', 'francisco I. Madero', 'mexico', 79055, 7821, 6038, 'Reindahl', 'Lyons');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (39, 'coahuila', 'san pedro', 'mexico', 88849, 8709, 1396, 'La Follette', 'Nancy');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (40, 'coahuila', 'san pedro', 'mexico', 74456, 5989, 7288, 'Colorado', 'Huxley');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (41, 'coahuila', 'san pedro', 'mexico', 97652, 2454, 964, 'Waywood', 'Old Gate');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (42, 'coahuila', 'torreon', 'mexico', 63756, 6490, 3459, 'Dovetail', 'Wayridge');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (43, 'coahuila', 'san pedro', 'mexico', 98206, 8145, 5737, 'Vidon', 'Merrick');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (44, 'coahuila', 'francisco I. Madero', 'mexico', 72960, 852, 2384, 'Graceland', 'Sage');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (45, 'coahuila', 'san pedro', 'mexico', 62351, 2667, 5568, 'Steensland', 'Grim');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (46, 'coahuila', 'san pedro', 'mexico', 54208, 3334, 3972, 'Loomis', 'Norway Maple');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (47, 'coahuila', 'torreon', 'mexico', 90743, 7099, 2429, 'Twin Pines', 'Mcbride');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (48, 'coahuila', 'san pedro', 'mexico', 99942, 5056, 5843, 'Thackeray', 'Maywood');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (49, 'coahuila', 'torreon', 'mexico', 57606, 3084, 418, 'Dayton', 'Elka');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (50, 'coahuila', 'san pedro', 'mexico', 57782, 5558, 2241, 'Mcbride', 'Elka');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (51, 'coahuila', 'francisco I. Madero', 'mexico', 55009, 8689, 7062, 'Westport', 'Clemons');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (52, 'coahuila', 'san pedro', 'mexico', 95143, 2467, 5464, 'Corscot', 'Warner');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (53, 'coahuila', 'francisco I. Madero', 'mexico', 91949, 4507, 7671, 'Crownhardt', 'Grover');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (54, 'coahuila', 'francisco I. Madero', 'mexico', 53284, 7135, 5520, 'Ilene', 'Mcguire');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (55, 'coahuila', 'francisco I. Madero', 'mexico', 52728, 7469, 47, 'Pearson', 'Merrick');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (56, 'coahuila', 'san pedro', 'mexico', 79051, 4563, 1893, 'Graedel', 'Dapin');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (57, 'coahuila', 'san pedro', 'mexico', 67754, 919, 257, 'Butterfield', 'Dunning');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (58, 'coahuila', 'san pedro', 'mexico', 80069, 227, 3499, 'La Follette', 'Anderson');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (59, 'coahuila', 'torreon', 'mexico', 59080, 8064, 4751, 'Sauthoff', 'Drewry');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (60, 'coahuila', 'san pedro', 'mexico', 69496, 8340, 6198, 'Old Shore', 'Bultman');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (61, 'coahuila', 'san pedro', 'mexico', 94870, 8264, 7848, 'Northfield', 'Arapahoe');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (62, 'coahuila', 'san pedro', 'mexico', 66666, 3251, 5410, 'Canary', 'Westerfield');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (63, 'coahuila', 'torreon', 'mexico', 59913, 8463, 677, 'Roth', 'Lunder');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (64, 'coahuila', 'torreon', 'mexico', 58965, 1255, 6049, 'Bobwhite', 'Marquette');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (65, 'coahuila', 'francisco I. Madero', 'mexico', 93280, 7484, 1004, 'Clove', 'Artisan');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (66, 'coahuila', 'san pedro', 'mexico', 70264, 3258, 1688, 'Mifflin', 'Dexter');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (67, 'coahuila', 'torreon', 'mexico', 100482, 8359, 3366, 'Melby', 'Golf');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (68, 'coahuila', 'torreon', 'mexico', 71410, 5870, 2281, 'Quincy', 'Lindbergh');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (69, 'coahuila', 'francisco I. Madero', 'mexico', 94447, 703, 7223, 'Transport', 'Cherokee');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (70, 'coahuila', 'san pedro', 'mexico', 84175, 4197, 7636, 'Maple Wood', 'Fuller');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (71, 'coahuila', 'san pedro', 'mexico', 67863, 2632, 6349, 'Jana', 'Nelson');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (72, 'coahuila', 'san pedro', 'mexico', 58721, 4514, 2274, 'Onsgard', 'Mitchell');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (73, 'coahuila', 'francisco I. Madero', 'mexico', 90601, 2207, 6317, 'Superior', 'Kinsman');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (74, 'coahuila', 'francisco I. Madero', 'mexico', 61433, 6883, 6295, 'Mcbride', 'Waubesa');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (75, 'coahuila', 'san pedro', 'mexico', 84015, 265, 493, 'Washington', 'Shoshone');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (76, 'coahuila', 'san pedro', 'mexico', 98229, 2771, 724, 'Valley Edge', 'Kenwood');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (77, 'coahuila', 'francisco I. Madero', 'mexico', 67343, 8297, 5746, 'Schurz', 'Merrick');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (78, 'coahuila', 'torreon', 'mexico', 87117, 8406, 1464, 'Mendota', 'Southridge');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (79, 'coahuila', 'francisco I. Madero', 'mexico', 84993, 2823, 191, 'Walton', 'Briar Crest');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (80, 'coahuila', 'torreon', 'mexico', 91227, 4302, 729, 'Bobwhite', 'Daystar');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (81, 'coahuila', 'torreon', 'mexico', 99737, 8143, 4074, 'Hayes', 'Lakewood Gardens');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (82, 'coahuila', 'san pedro', 'mexico', 84308, 2761, 5649, 'Old Shore', 'Utah');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (83, 'coahuila', 'san pedro', 'mexico', 63051, 5792, 2429, 'West', 'Ilene');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (84, 'coahuila', 'francisco I. Madero', 'mexico', 79213, 6054, 6204, 'Continental', 'Fuller');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (85, 'coahuila', 'san pedro', 'mexico', 79051, 5811, 2257, 'Center', 'Heath');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (86, 'coahuila', 'torreon', 'mexico', 92521, 6147, 6675, 'Truax', 'Atwood');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (87, 'coahuila', 'torreon', 'mexico', 68069, 2826, 1937, 'Parkside', 'Steensland');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (88, 'coahuila', 'francisco I. Madero', 'mexico', 98394, 6596, 4339, 'Claremont', 'Alpine');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (89, 'coahuila', 'san pedro', 'mexico', 72481, 6329, 6011, 'Gateway', 'Eagan');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (90, 'coahuila', 'san pedro', 'mexico', 59344, 2216, 5241, 'Pearson', 'Pearson');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (91, 'coahuila', 'torreon', 'mexico', 63006, 36, 1490, 'Brentwood', 'Merry');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (92, 'coahuila', 'francisco I. Madero', 'mexico', 74798, 1922, 2383, 'Sauthoff', 'Hauk');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (93, 'coahuila', 'san pedro', 'mexico', 62512, 1809, 201, 'Summerview', 'Schmedeman');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (94, 'coahuila', 'san pedro', 'mexico', 63513, 7021, 2442, 'Melody', 'Russell');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (95, 'coahuila', 'francisco I. Madero', 'mexico', 91140, 8388, 6904, 'School', 'Mariners Cove');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (96, 'coahuila', 'san pedro', 'mexico', 74089, 1991, 752, 'Petterle', 'Grayhawk');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (97, 'coahuila', 'torreon', 'mexico', 52550, 1328, 7743, 'Bunting', 'Manley');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (98, 'coahuila', 'torreon', 'mexico', 89396, 3773, 5247, 'Anhalt', 'Straubel');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (99, 'coahuila', 'torreon', 'mexico', 93337, 6781, 4308, 'Upham', 'Coleman');
insert into Domicilio (idDomicilio, estado, ciudad, pais, codigoPostal, numeroExt, numeroInt, calle, colonia) values (100, 'coahuila', 'torreon', 'mexico', 87138, 5226, 1710, 'Cordelia', 'Muir');
GO

CREATE TABLE InfoMedica(
--Descripción de los atributos
	idMedica INT PRIMARY KEY NOT NULL,
	FkIdAlergias INT ,
 	FkIdEnfermedad INT ,
	tipoSangre VARCHAR(20) NOT NULL,
	sexo VARCHAR(15) NOT NULL,
	CONSTRAINT ConsForeignAlergias FOREIGN KEY (FkIdAlergias) REFERENCES Alergias(idAlergia),
	CONSTRAINT ConsForeignEnfermedad FOREIGN KEY (FkIdEnfermedad) REFERENCES Enfermedad(idEnfermedad)
)
GO

insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (1, 1, 1, 'AB positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (2, 2, 2, 'A negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (3, 3, 3, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (4, 4, 4, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (5, 5, 5, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (6, 6, 6, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (7, 7, 7, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (8, 8, 8, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (9, 9, 9, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (10, 10, 10, 'B positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (11, 11, 11, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (12, 12, 12, 'B positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (13, 13, 13, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (14, 14, 14, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (15, 15, 15, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (16, 16, 16, 'AB positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (17, 17, 17, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (18, 18, 18, 'A positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (19, 19, 19, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (20, 20, 20, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (21, 21, 21, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (22, 22, 22, 'A positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (23, 23, 23, 'AB positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (24, 24, 24, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (25, 25, 25, 'AB positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (26, 26, 26, 'B negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (27, 27, 27, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (28, 28, 28, 'A positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (29, 29, 29, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (30, 30, 30, 'AB negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (31, 31, 31, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (32, 32, 32, 'A positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (33, 33, 33, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (34, 34, 34, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (35, 35, 35, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (36, 36, 36, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (37, 37, 37, 'A negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (38, 38, 38, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (39, 39, 39, 'A positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (40, 40, 40, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (41, 41, 41, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (42, 42, 42, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (43, 43, 43, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (44, 44, 44, 'AB negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (45, 45, 45, 'B positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (46, 46, 46, 'A negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (47, 47, 47, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (48, 48, 48, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (49, 49, 49, 'AB negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (50, 50, 50, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (51, 51, 51, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (52, 52, 52, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (53, 53, 53, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (54, 54, 54, 'A positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (55, 55, 55, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (56, 56, 56, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (57, 57, 57, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (58, 58, 58, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (59, 59, 59, 'AB positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (60, 60, 60, 'B negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (61, 61, 61, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (62, 62, 62, 'B positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (63, 63, 63, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (64, 64, 64, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (65, 65, 65, 'A negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (66, 66, 66, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (67, 67, 67, 'B positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (68, 68, 68, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (69, 69, 69, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (70, 70, 70, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (71, 71, 71, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (72, 72, 72, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (73, 73, 73, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (74, 74, 74, 'AB positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (75, 75, 75, 'AB negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (76, 76, 76, 'AB positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (77, 77, 77, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (78, 78, 78, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (79, 79, 79, 'A positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (80, 80, 80, 'A negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (81, 81, 81, 'A positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (82, 82, 82, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (83, 83, 83, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (84, 84, 84, 'AB positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (85, 85, 85, 'B negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (86, 86, 86, 'O positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (87, 87, 87, 'A negativo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (88, 88, 88, 'B negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (89, 89, 89, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (90, 90, 90, 'AB positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (91, 91, 91, 'O positivo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (92, 92, 92, 'B positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (93, 93, 93, 'AB positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (94, 94, 94, 'A positivo', 'Masculino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (95, 95, 95, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (96, 96, 96, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (97, 97, 97, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (98, 98, 98, 'A negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (99, 99, 99, 'AB negativo', 'Femenino');
insert into  InfoMedica (idMedica , FkIdAlergias, FkIdEnfermedad , tipoSangre, sexo) values (100, 100, 100, 'A negativo', 'Masculino');
GO

CREATE TABLE Enfermedad(
--Descripción de los atributos
	idEnfermedad INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(100) NOT NULL
)
GO

insert into Enfermedad (idEnfermedad, nombre) values (1, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (2, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (3, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (4, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (5, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (6, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (7, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (8, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (9, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (10, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (11, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (12, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (13, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (14, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (15, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (16, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (17, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (18, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (19, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (20, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (21, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (22, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (23, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (24, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (25, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (26, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (27, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (28, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (29, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (30, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (31, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (32, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (33, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (34, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (35, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (36, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (37, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (38, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (39, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (40, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (41, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (42, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (43, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (44, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (45, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (46, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (47, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (48, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (49, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (50, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (51, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (52, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (53, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (54, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (55, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (56, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (57, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (58, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (59, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (60, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (61, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (62, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (63, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (64, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (65, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (66, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (67, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (68, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (69, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (70, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (71, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (72, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (73, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (74, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (75, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (76, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (77, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (78, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (79, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (80, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (81, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (82, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (83, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (84, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (85, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (86, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (87, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (88, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (89, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (90, 'Ninguna');
insert into Enfermedad (idEnfermedad, nombre) values (91, 'Diabetes Mellitus Tipo 1');
insert into Enfermedad (idEnfermedad, nombre) values (92, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (93, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (94, 'Hipertensión arterial primaria');
insert into Enfermedad (idEnfermedad, nombre) values (95, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (96, 'Enfermedad Renal Crónica');
insert into Enfermedad (idEnfermedad, nombre) values (97, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (98, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (99, 'Diabetes Mellitus Tipo 2');
insert into Enfermedad (idEnfermedad, nombre) values (100, 'Diabetes Mellitus Tipo 2');
GO

CREATE TABLE Alergias(
--Descripción de los atributos
	idAlergia INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(100) NOT NULL	
)
GO
insert into Alergias (idAlergia, nombre) values (1, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (2, 'ninguna');
insert into Alergias (idAlergia, nombre) values (3, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (4, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (5, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (6, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (7, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (8, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (9, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (10, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (11, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (12, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (13, 'ninguna');
insert into Alergias (idAlergia, nombre) values (14, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (15, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (16, 'ninguna');
insert into Alergias (idAlergia, nombre) values (17, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (18, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (19, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (20, 'ninguna');
insert into Alergias (idAlergia, nombre) values (21, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (22, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (23, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (24, 'ninguna');
insert into Alergias (idAlergia, nombre) values (25, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (26, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (27, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (28, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (29, 'ninguna');
insert into Alergias (idAlergia, nombre) values (30, 'ninguna');
insert into Alergias (idAlergia, nombre) values (31, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (32, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (33, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (34, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (35, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (36, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (37, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (38, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (39, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (40, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (41, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (42, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (43, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (44, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (45, 'ninguna');
insert into Alergias (idAlergia, nombre) values (46, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (47, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (48, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (49, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (50, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (51, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (52, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (53, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (54, 'ninguna');
insert into Alergias (idAlergia, nombre) values (55, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (56, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (57, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (58, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (59, 'ninguna');
insert into Alergias (idAlergia, nombre) values (60, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (61, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (62, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (63, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (64, 'ninguna');
insert into Alergias (idAlergia, nombre) values (65, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (66, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (67, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (68, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (69, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (70, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (71, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (72, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (73, 'ninguna');
insert into Alergias (idAlergia, nombre) values (74, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (75, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (76, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (77, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (78, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (79, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (80, 'ninguna');
insert into Alergias (idAlergia, nombre) values (81, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (82, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (83, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (84, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (85, 'ninguna');
insert into Alergias (idAlergia, nombre) values (86, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (87, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (88, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (89, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (90, 'Alergia cutánea');
insert into Alergias (idAlergia, nombre) values (91, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (92, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (93, 'ninguna');
insert into Alergias (idAlergia, nombre) values (94, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (95, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (96, 'Alergia alimentaria');
insert into Alergias (idAlergia, nombre) values (97, 'Rinitis alérgica');
insert into Alergias (idAlergia, nombre) values (98, 'Asma y alergias respiratorias');
insert into Alergias (idAlergia, nombre) values (99, 'Picaduras de insectos');
insert into Alergias (idAlergia, nombre) values (100, 'ninguna');
GO--creamos una tabla para el login principal de RH
CREATE TABLE RHLOGIN (
nombre VARCHAR(50),
pass VARCHAR(50)
)
GO
-----CREAMOS LA TABLA DE DOCUMENTOS
CREATE TABLE Documentos(
id INT PRIMARY KEY,
FKidEmpleado INT,
nombre VARCHAR (40),
tipo VARCHAR (40),
ruta VARCHAR (100),
CONSTRAINT ConsForeignDocumentos FOREIGN KEY (FkidEmpleado) REFERENCES Empleado (idEmpleado)
)
GO

select nombre from RHLOGIN
GO
SELECT count(*) FROM Empleado WHERE correoElectronico='sdsdao123.com'
SELECT * FROM Empleado
SELECT correoElectronico FROM Empleado WHERE pass=''
GO
INSERT INTO RHLOGIN(nombre,pass)VALUES('sa','1995')
select * from Enfermedad
GO
SELECT * from InfoAcademica
insert into Domicilio values (101,'q','q','q','q','q','q','q','q')

insert into Empleado values(101,'daglen_15@hotmail.com','glenn',101,101,101
 GO 
 select c.name as nombre from sys.columns c 
 join sys.tables t on c.object_id=t.object_id
 where t.name = 'InfoAcademica'

 Select * From  Empleado

 select calle from Domicilio AS D
INNER JOIN InfoPersonal AS IP ON IP.FkDomicilio=D.idDomicilio
INNER JOIN Empleado as E ON IP.idPersonal=E.FkInfoPersonal
where E.correoElectronico = 'adaggett0@hao123.com' 
go
select * FROM INFOACADEMICA
select count(*) from documentos
select * FROM Documentos
delete Documentos
insert into Documentos values(1,1,'a','v','c')
 select idEmpleado from Empleado where correoElectronico='adaggett0@hao123.com'
 select idEmpleado from Empleado 

 select * from InfoMedica
 select idMedica from InfoMedica as me inner join InfoPersonal as p on p.FkInfoMedica= me.idMedica inner join Empleado as e on e.FkInfoPersonal= p.idPersonal where e.idEmpleado=5

 select idAlergia from Alergias as a inner join InfoMedica as me on a.idAlergia=me.FkIdAlergias inner join InfoPersonal as p on p.FkInfoMedica= me.idMedica inner join Empleado as e on e.FkInfoPersonal= p.idPersonal where e.idEmpleado=5
 go
 select * from Empleado

 insert into Empleado values(1,'jesus.gome@sistemas.tecsanpedro.edu.mx','123456',1,1,1)
 go
 select FKidEmpleado from Documentos inner join Empleado on Empleado.idEmpleado = Documentos.FKidEmpleado
 WHERE Empleado.idEmpleado=
 select ruta from Documentos where FKidEmpleado= and tipo='' and nombre=''  