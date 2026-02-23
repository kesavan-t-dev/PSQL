--table creation
create table zoo (
	id INT,
	zoo VARCHAR(10),
	location VARCHAR(50),
	year INT
);


--animal table creation
create table animal (
	animal_id INT,
	animal_name VARCHAR(50),
	location VARCHAR(8),
	zoo_id INT
);


--values insertion for zoo
insert into zoo (id, zoo, location, year) values (1, 'safari', 'Kinna', 1986);
insert into zoo (id, zoo, location, year) values (2, 'safari', 'Lyamino', 1954);
insert into zoo (id, zoo, location, year) values (3, 'rainforest', 'Antanifotsy', 1994);
insert into zoo (id, zoo, location, year) values (4, 'wildlife', 'Icononzo', 2022);
insert into zoo (id, zoo, location, year) values (5, 'wildlife', 'Gempol', 1999);
insert into zoo (id, zoo, location, year) values (6, 'wildlife', 'Candelaria', 2012);
insert into zoo (id, zoo, location, year) values (7, 'wildlife', 'Aylmer', 1988);
insert into zoo (id, zoo, location, year) values (8, 'rainforest', 'Kauniainen', 2018);
insert into zoo (id, zoo, location, year) values (9, 'wildlife', 'Candi', 1991);
insert into zoo (id, zoo, location, year) values (10, 'safari', 'Huabeitun', 1954);

--insert values for animal
insert into animal (animal_id, animal_name, location, zoo_id) values (1, 'Alouatta seniculus', 'giraffe', 10);
insert into animal (animal_id, animal_name, location, zoo_id) values (2, 'Agkistrodon piscivorus', 'giraffe', 3);
insert into animal (animal_id, animal_name, location, zoo_id) values (3, 'Tockus erythrorhyncus', 'tiger', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (4, 'Cathartes aura', 'lion', 5);
insert into animal (animal_id, animal_name, location, zoo_id) values (5, 'Vulpes vulpes', 'wolf', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (6, 'Colaptes campestroides', 'elephant', 1);
insert into animal (animal_id, animal_name, location, zoo_id) values (7, 'Funambulus pennati', 'lion', 8);
insert into animal (animal_id, animal_name, location, zoo_id) values (8, 'Vulpes vulpes', 'wolf', 4);
insert into animal (animal_id, animal_name, location, zoo_id) values (9, 'Lemur catta', 'tiger', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (10, 'Castor fiber', 'tiger', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (11, 'Macropus eugenii', 'bear', 2);
insert into animal (animal_id, animal_name, location, zoo_id) values (12, 'Paroaria gularis', 'lion', 9);
insert into animal (animal_id, animal_name, location, zoo_id) values (13, 'Irania gutteralis', 'wolf', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (14, 'Tamiasciurus hudsonicus', 'tiger', 1);
insert into animal (animal_id, animal_name, location, zoo_id) values (15, 'Litrocranius walleri', 'elephant', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (16, 'Redunca redunca', 'elephant', 3);
insert into animal (animal_id, animal_name, location, zoo_id) values (17, 'Proteles cristatus', 'bear', 8);
insert into animal (animal_id, animal_name, location, zoo_id) values (18, 'Uraeginthus granatina', 'tiger', 4);
insert into animal (animal_id, animal_name, location, zoo_id) values (19, 'Fregata magnificans', 'tiger', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (20, 'Hippotragus equinus', 'wolf', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (21, 'Macropus rufogriseus', 'tiger', 9);
insert into animal (animal_id, animal_name, location, zoo_id) values (22, 'Ovibos moschatus', 'elephant', 9);
insert into animal (animal_id, animal_name, location, zoo_id) values (23, 'Dasypus septemcincus', 'lion', 3);
insert into animal (animal_id, animal_name, location, zoo_id) values (24, 'Ratufa indica', 'giraffe', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (25, 'Speothos vanaticus', 'lion', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (26, 'Gymnorhina tibicen', 'bear', 1);
insert into animal (animal_id, animal_name, location, zoo_id) values (27, 'Cervus duvauceli', 'bear', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (28, 'unavailable', 'bear', 5);
insert into animal (animal_id, animal_name, location, zoo_id) values (29, 'Panthera leo', 'elephant', 1);
insert into animal (animal_id, animal_name, location, zoo_id) values (30, 'Uraeginthus granatina', 'elephant', 2);
insert into animal (animal_id, animal_name, location, zoo_id) values (31, 'Anitibyx armatus', 'tiger', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (32, 'Orcinus orca', 'elephant', 3);
insert into animal (animal_id, animal_name, location, zoo_id) values (33, 'Felis concolor', 'lion', 4);
insert into animal (animal_id, animal_name, location, zoo_id) values (34, 'unavailable', 'bear', 5);
insert into animal (animal_id, animal_name, location, zoo_id) values (35, 'Choloepus hoffmani', 'lion', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (36, 'Macaca nemestrina', 'wolf', 7);
insert into animal (animal_id, animal_name, location, zoo_id) values (37, 'Lepus townsendii', 'elephant', 5);
insert into animal (animal_id, animal_name, location, zoo_id) values (38, 'Butorides striatus', 'elephant', 8);
insert into animal (animal_id, animal_name, location, zoo_id) values (39, 'Spermophilus richardsonii', 'tiger', 9);
insert into animal (animal_id, animal_name, location, zoo_id) values (40, 'Ramphastos tucanus', 'elephant', 1);
insert into animal (animal_id, animal_name, location, zoo_id) values (41, 'Felis caracal', 'giraffe', 3);
insert into animal (animal_id, animal_name, location, zoo_id) values (42, 'Mazama gouazoubira', 'tiger', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (43, 'Corvus albicollis', 'wolf', 4);
insert into animal (animal_id, animal_name, location, zoo_id) values (44, 'Ninox superciliaris', 'lion', 4);
insert into animal (animal_id, animal_name, location, zoo_id) values (45, 'Limosa haemastica', 'wolf', 4);
insert into animal (animal_id, animal_name, location, zoo_id) values (46, 'Felis caracal', 'tiger', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (47, 'Cordylus giganteus', 'elephant', 5);
insert into animal (animal_id, animal_name, location, zoo_id) values (48, 'Spermophilus lateralis', 'tiger', 6);
insert into animal (animal_id, animal_name, location, zoo_id) values (49, 'Macropus fuliginosus', 'tiger', 10);
insert into animal (animal_id, animal_name, location, zoo_id) values (50, 'Bubulcus ibis', 'bear', 7);
