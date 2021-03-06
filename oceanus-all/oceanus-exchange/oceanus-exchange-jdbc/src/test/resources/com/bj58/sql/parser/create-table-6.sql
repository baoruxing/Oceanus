CREATE TABLE t1 (c1 integer primary key,
c2 integer not null, 
c3 integer not null,
c4 integer not null, 
c5 integer not null, 
c6 integer not null,
unique (c2),
constraint key_c3 unique (c3),
foreign key (c4) references t3,
grouping foreign key (c2) references t2 (c1),
constraint fk_c5 foreign key (c5) references other.t5,
constraint fk_c6 grouping foreign key (c6) references t6)