-- start user


insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (1, 'fdowyer0', '6MW4uaemvPl', 'Farlay Dowyer', '6503251993', 'fdowyer0@independent.co.uk', 'https://robohash.org/autemcumquevel.png?size=50x50&set=set1', '2001/12/29', true, 0, '2020/01/25', '2021/09/05');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (2, 'cmaccaghan1', 'IbY885', 'Corrie MacCaghan', '1222408201', 'cmaccaghan1@prnewswire.com', 'https://robohash.org/rerumautvelit.png?size=50x50&set=set1', '2001/05/22', false, 0, '2020/01/18', '2021/05/01');


-- end user



-- start role

insert into role (id, name) values(1, "ADMIN");
insert into role (id, name) values(2, "CLIENT");

-- end role



-- start user_role


insert into user_role (user_id, role_id) values (1, 1);
insert into user_role (user_id, role_id) values (2, 2);




