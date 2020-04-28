insert into customer	values ('ID1',	'John',	'Doe', '1234567890000000', '2019-01-01');
insert into customer	values ('ID2',	'Jane',	'Doe', '1234567890000001', '2019-01-02');
insert into customer	values ('ID3',	'John',	'Smith', '1234567890000010', '2019-01-03');
insert into customer	values ('ID4',	'Glen', 'Johnson', '1234567890000100', '2019-01-04');
insert into customer	values ('ID5',	'Tom', 'Smith', '123456789001000', '2019-01-05');
insert into customer	values ('ID6',	'Ann', 'Smith', '1234567890010000', '2019-01-06');
insert into customer	values ('ID7',	'John', 'Williams', '1234567890100000', '2019-01-07');
insert into customer	values ('ID8',	'Joe', 'Smith', '1234567891000000', '2019-01-08');
insert into customer	values ('ID9',	'Adam', 'Cole', '1234567891100000', '2019-01-09');
insert into customer	values ('ID10',	'Jordan', 'Palmer', '1234567891110000', '2019-01-10');
insert into customer	values ('ID11',	'Eddy', 'Diaz', '1234567891111000', '2019-01-11');
insert into customer	values ('ID12',	'Nick', 'Paul', '1234567891111100', '2019-01-12');
insert into customer    values ('ID13', 'Most', 'Valuable', '1234567891111111', '2019-01-13');
insert into customer    values ('ID21', 'Query', '10-Person', '1234567811111111', '2019-01-14');


insert into driver	values ('ID1',	'Dan',	'James', '1234567890000000', '2019-01-01');
insert into driver	values ('ID2',	'Mike',	'Henry', '1234567890000001', '2019-01-02');
insert into driver	values ('ID3',	'Ryan',	'Anthony', '1234567890000010', '2019-01-03');
insert into driver	values ('ID4',	'Liam',	'Oliver', '1234567890000100', '2019-01-04');
insert into driver	values ('ID5',	'Mary',	'Elizabeth', '1234567890001000', '2019-01-05');
insert into driver	values ('ID6',	'Don',	'Stevens', '1234567890010000', '2019-01-06');
insert into driver	values ('ID7',	'Frank',	'Alexander', '1234567890100000', '2019-01-07');
insert into driver	values ('ID8',	'Carl',	'Harold', '1234567891000000', '2019-01-08');
insert into driver	values ('ID9',	'Jude',	'Frances', '1234567891100000', '2019-01-09');
insert into driver	values ('ID10',	'Cheryl',	'Ann', '1234567891110000', '2019-01-10');
insert into driver	values ('ID11',	'Sara',	'Madison', '1234567891111000', '2019-01-11');
insert into driver	values ('ID12',	'Grace', 'Beverly', '1234567891111100', '2019-01-12');

insert into vehicle	values ('123456MD',	1, 'Toyota', 'Corolla', 2019, 5, 3, 'ID1');
insert into vehicle_last_loc values('123456MD', '2015-01-01 02:24:44', '21236', 'Catonsville', '1234', 'Street', 'MD', .77000, -.57000);
insert into vehicle	values ('123456DE',	0, 'Honda', 'Civic', 2010, 1, 2, 'ID2');
insert into vehicle	values ('123456PA',	1, 'Honda', 'CRV', 2019, 7, 4, 'ID3');
insert into vehicle	values ('123456NJ',	1, 'Ford', 'F-150', 2019, 10, 4, 'ID4');
insert into vehicle_last_loc values('123456NJ', '2015-12-11 02:24:44', '21236', 'Catonsville', '1234', 'Street', 'MD', .76000, -.56000);
insert into vehicle	values ('123456NY',	0, 'Jeep', 'Wrangler', 2019, 4, 5, 'ID5');
insert into vehicle	values ('123456CA',	0, 'Jeep', 'Cherokee', 1998, 7, 3, 'ID6');
insert into vehicle	values ('123456NV',	1, 'Nissan', 'Titan', 2019, 10, 4, 'ID7');
insert into vehicle	values ('123456FL',	1, 'Range Rover', 'Sport', 2011, 3, 4, 'ID8');
insert into vehicle	values ('123456VA',	1, 'Honda', 'Odyssey', 2012, 3, 6, 'ID9');
insert into vehicle	values ('123456WV',	1, 'Chevy', 'Tahoe', 2004, 6, 9, 'ID10');
insert into vehicle	values ('123456MI',	0, 'Lexus', 'LX', 2014, 4, 8, 'ID11');
insert into vehicle	values ('123456OH',	1, 'Porsche', 'Cayenne', 2016, 2, 5, 'ID12');

insert into trip	values (15.54, 35.21, '123456MD', 'ID1', 'ID1', 'ID1'); 
insert into trip_stops values ('2015-01-01 01:34:44', 'no', 0.00, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID1'); 
insert into trip_stops values ('2015-01-01 01:36:44', 'no', 1.23, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID1');
insert into trip_stops values('2015-01-01 01:44:44', 'no', 4.24, '21237', 'Baltimore', 123, 'Main', 'MD', .7501234567, -.5779034567, 'ID1');
insert into trip_stops values('2015-01-01 01:56:44', 'no', 6.54, '21238', 'Essex', '120', '2nd', 'MD', .7301234567, -.5079034567, 'ID1');
insert into trip_stops values('2015-01-01 02:24:44', 'yes', 3.53, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567,'ID1');

insert into trip values (25.54, 12.23, '123456DE', 'ID2', 'ID2', 'ID2'); 
insert into trip_stops values ('2015-02-01 02:34:44', 'no', 0.00, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID2'); 
insert into trip_stops values ('2015-02-01 02:36:44', 'no', 1.239, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID2'); 
insert into trip_stops values('2015-02-01 02:44:44', 'no', 3.7, '21237', 'Baltimore', '123', 'Main', 'MD', .7501234567, -.5779034567, 'ID2'); 
insert into trip_stops values('2015-02-01 02:56:44', 'no', 4.9, '21238', 'Essex', '120', '2nd', 'MD', .7301234567, -.5079034567, 'ID2'); 
insert into trip_stops values ('2015-02-01 03:24:44', 'yes', 15.7, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID2');

insert into trip values (23.64, 24.23, '123456PA', 'ID3', 'ID3', 'ID3'); 
insert into trip_stops values('2015-03-01 03:34:44', 'no', 0.00, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID3'); 
insert into trip_stops values ('2015-03-01 03:36:44', 'no', 2.344, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID3'); 
insert into trip_stops values ('2015-03-01 03:44:44', 'no', 3.7, '21237', 'Baltimore', '123', 'Main', 'MD', .7501234567, -.5779034567, 'ID3'); 
insert into trip_stops values ('2015-03-01 03:56:44', 'no', 1.9, '21238', 'Essex', '120', '2nd', 'MD', .7301234567, -.5079034567, 'ID3'); 
insert into trip_stops values ('2015-03-01 04:24:44', 'yes', 15.7, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID3');

insert into trip	values (2.44, 7.21, '123456NJ', 'ID4', 'ID4', 'ID4');
insert into trip_stops values ('2015-04-01 04:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID4');
insert into trip_stops values ('2015-04-01 04:36:44', 'yes', 2.44, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID4');

insert into trip	values (1.44, 7.21, '123456NJ', 'ID4', 'ID4', 'ID13'); 
insert into trip_stops values ('2015-03-01 04:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID13');
insert into trip_stops values ('2015-03-01 04:37:44', 'yes', 1.44, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID13');

insert into trip	values (5.67, 15.87, '123456MD', 'ID1', 'ID1', 'ID15');
insert into trip_stops values ('2019-12-11 05:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street','MD', .7601234567, -.5679034567, 'ID15');
insert into trip_stops values ('2019-12-11 06:37:44', 'yes', 5.67, '21236', 'Catonsville', '1234', 'Street','MD', .7601234567, -.5679034567, 'ID15');

insert into trip	values (5.67, 15.87, '123456MD', 'ID1', 'ID21', 'ID16');
insert into trip_stops values ('2019-12-11 05:21:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street','MD', .7601234567, -.5679034567, 'ID16');
insert into trip_stops values ('2019-12-11 06:21:44', 'yes', 5.67, '21236', 'Catonsville', '1234', 'Street','MD', .7601234567, -.5679034567, 'ID16');

insert into trip	values (5.67, 15.87, '123456NY', 'ID5', 'ID6', 'ID14');
insert into trip_stops values ('2019-12-11 05:37:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street','MD', .7601234567, -.5679034567, 'ID14');
insert into trip_stops values ('2019-12-11 06:38:44', 'yes', 5.67, '21236', 'Catonsville', '1234', 'Street','MD', .7601234567, -.5679034567, 'ID14');

insert into trip	values (6.78, 16.00, '123456CA', 'ID6', 'ID6', 'ID6');
insert into trip_stops values ('2019-12-11 06:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID6');
insert into trip_stops values ('2019-12-11 06:39:44', 'yes', 6.78, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID6');

insert into trip	values (9.56, 24.09, '123456NV', 'ID7', 'ID7', 'ID7'); 
insert into trip_stops values ('2015-07-01 07:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID7');
insert into trip_stops values ('2015-07-01 07:40:44', 'yes', 9.56, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID7');

insert into trip	values (25.76, 64.43, '123456FL', 'ID8', 'ID8', 'ID8'); 
insert into trip_stops values ('2019-12-12 08:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID8');
insert into trip_stops values ('2019-12-12 08:41:44', 'yes', 25.76, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID8');

insert into trip	values (67.98, 130.34, '123456VA', 'ID9', 'ID9', 'ID9');
insert into trip_stops values('2019-12-12 09:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID9');
insert into trip_stops values('2019-12-12 09:42:44', 'yes', 67.98, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID9');

insert into trip	values (54.86, 113.54, '123456WV', 'ID10', 'ID10', 'ID10'); 
insert into trip_stops values('2019-12-12 10:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID10');
insert into trip_stops values('2019-12-12 10:43:44', 'yes', 54.86, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID10');

insert into trip	values (30.43, 76.54, '123456MI', 'ID11', 'ID11', 'ID11');
insert into trip_stops values ('2019-12-12 11:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID11');
insert into trip_stops values ('2019-12-12 11:44:44', 'yes', 30.43, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID11');

insert into trip	values (12.98, 25.67, '123456OH', 'ID12', 'ID12', 'ID12'); 
insert into trip_stops values ('2019-12-12 12:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID12');
insert into trip_stops values ('2019-12-12 12:45:44', 'yes', 12.98, '21236', 'Testing', '1234', 'Query', 'MD', .7601234567, -.5679034567, 'ID12');

insert into trip	values (1, 25.67, '123456OH', 'ID12', 'ID21', 'ID22'); 
insert into trip_stops values ('2019-11-12 12:34:44', 'no', 0, '21236', 'Catonsville', '1234', 'Street', 'MD', .7601234567, -.5679034567, 'ID22');
insert into trip_stops values ('2019-11-12 12:45:44', 'yes', 1, '21236', 'Testing', '1234', 'Query', 'MD', .7601234567, -.5679034567, 'ID22');


insert into payment	values ('2019-01-01 01:00:00', 'ID1', 20, '1234567890000000');
insert into payment	values ('2019-01-01 02:00:00', 'ID2', 20, '1234567890000000');
insert into payment	values ('2019-01-01 03:00:00', 'ID3', 20, '1234567890000000');
insert into payment	values ('2019-01-01 04:00:00', 'ID4', 20, '1234567890000000');
insert into payment	values ('2019-01-01 06:00:00', 'ID6', 20, '1234567890000000');
insert into payment	values ('2019-01-01 06:30:00', 'ID6', 200, '1234567891111111');
insert into payment	values ('2019-01-01 06:40:00', 'ID6', 400, '1234567891111111');
insert into payment	values ('2019-01-01 06:50:00', 'ID6', 400, '1234567890100000');
insert into payment	values ('2019-01-01 07:00:00', 'ID7', -20, '1234567890000001');
insert into payment	values ('2019-01-01 08:00:00', 'ID8', -20, '1234567890000010');
insert into payment	values ('2019-01-01 09:00:00', 'ID9', -20, '1234567890000100');
insert into payment	values ('2019-01-01 10:00:00', 'ID10', -20, '1234567890010000');
insert into payment	values ('2019-01-01 11:00:00', 'ID11', -20, '1234567890100000');
insert into payment	values ('2019-01-01 12:00:00', 'ID12', -20, '1234567891000000');