-- start user


insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (1, 'fdowyer0', '6MW4uaemvPl', 'Farlay Dowyer', '6503251993', 'fdowyer0@independent.co.uk', 'https://robohash.org/autemcumquevel.png?size=50x50&set=set1', '2001/12/29', true, 0, '2020/01/25', '2021/09/05');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (2, 'cmaccaghan1', 'IbY885', 'Corrie MacCaghan', '1222408201', 'cmaccaghan1@prnewswire.com', 'https://robohash.org/rerumautvelit.png?size=50x50&set=set1', '2001/05/22', false, 0, '2020/01/18', '2021/05/01');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (3, 'lbrussels2', 'BNVnNHvlAg8', 'Lorettalorna Brussels', '6309368530', 'lbrussels2@barnesandnoble.com', 'https://robohash.org/delectusquisquammolestias.png?size=50x50&set=set1', '2003/07/15', true, 1, '2020/04/24', '2021/06/22');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (4, 'lminigo3', 'zY4JvT8y', 'Lev Minigo', '8043168512', 'lminigo3@upenn.edu', 'https://robohash.org/quiaplaceatcupiditate.png?size=50x50&set=set1', '2004/11/27', true, 0, '2019/11/19', '2021/01/08');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (5, 'zopy4', 'lhR4tR', 'Zebulon Opy', '1775843544', 'zopy4@boston.com', 'https://robohash.org/debitismollitiadeleniti.png?size=50x50&set=set1', '2004/11/14', true, 0, '2020/06/18', '2021/08/02');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (6, 'tberriball5', 'XciiYhh', 'Terry Berriball', '5173184575', 'tberriball5@hc360.com', 'https://robohash.org/adquideleniti.png?size=50x50&set=set1', '2005/05/10', true, 1, '2019/12/07', '2021/07/30');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (7, 'vaddey6', '86nuRWEvGFE3', 'Verine Addey', '1485406445', 'vaddey6@pinterest.com', 'https://robohash.org/voluptateaquia.png?size=50x50&set=set1', '2002/11/19', false, 1, '2020/04/30', '2021/02/18');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (8, 'mbreede7', '0PbrpGx', 'Mindy Breede', '1678838215', 'mbreede7@plala.or.jp', 'https://robohash.org/dolorumundeplaceat.png?size=50x50&set=set1', '2003/11/20', false, 0, '2020/08/11', '2021/08/29');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (9, 'daksell8', 'gZEjNK7S', 'Dolores Aksell', '5924358453', 'daksell8@scientificamerican.com', 'https://robohash.org/cupiditatevelitratione.png?size=50x50&set=set1', '2003/05/19', true, 1, '2020/02/21', '2021/09/22');
insert into User (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (10, 'rwoodham9', 'SQbRWHvlMtXc', 'Roz Woodham', '2494226594', 'rwoodham9@purevolume.com', 'https://robohash.org/minimalaboriosamsoluta.png?size=50x50&set=set1', '2005/04/12', false, 1, '2020/04/25', '2021/08/14');


-- end user



-- start role

insert into Role (id, name) values(1, "ADMIN");
insert into Role (id, name) values(2, "CLIENT");

-- end role



-- start user_role


insert into user_role (user_id, role_id) values (1, 1);
insert into user_role (user_id, role_id) values (2, 2);
insert into user_role (user_id, role_id) values (3, 1);
insert into user_role (user_id, role_id) values (4, 1);
insert into user_role (user_id, role_id) values (5, 1);
insert into user_role (user_id, role_id) values (6, 2);
insert into user_role (user_id, role_id) values (7, 2);
insert into user_role (user_id, role_id) values (8, 2);
insert into user_role (user_id, role_id) values (9, 2);
insert into user_role (user_id, role_id) values (10, 1);


-- end user_role



