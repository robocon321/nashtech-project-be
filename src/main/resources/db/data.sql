-- start user (10)


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



-- start role (2)

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





-- start category (30)


insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (1, 'Drywall & Acoustical (MOB)', 'http://dummyimage.com/227x100.png/ff4444/ffffff', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'category-1', 'dui nec nisi volutpat eleifend donec ut dolor morbi', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, '2021/09/12', '2022/08/03');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (2, 'Wall Protection', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'category-2', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec', 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, '2021/05/23', '2021/12/06');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (3, 'Curb & Gutter', 'http://dummyimage.com/157x100.png/cc0000/ffffff', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'category-3', 'erat fermentum justo nec condimentum neque sapien placerat ante', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '2020/10/31', '2022/04/21');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (4, 'Ornamental Railings', 'http://dummyimage.com/194x100.png/cc0000/ffffff', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'category-4', 'tortor id nulla ultrices aliquet maecenas leo', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 1, '2021/05/11', '2022/04/11');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (5, 'Fire Sprinkler System', 'http://dummyimage.com/200x100.png/5fa2dd/ffffff', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'category-5', 'ac nulla sed vel enim sit', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 0, '2020/10/30', '2022/01/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (6, 'Doors, Frames & Hardware', 'http://dummyimage.com/135x100.png/cc0000/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'category-6', 'enim blandit mi in porttitor pede', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 0, '2020/11/03', '2022/06/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (7, 'Doors, Frames & Hardware', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'category-7', 'in libero ut massa volutpat', 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '2020/11/06', '2022/03/20');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (8, 'Fire Protection', 'http://dummyimage.com/218x100.png/cc0000/ffffff', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'category-8', 'leo rhoncus sed vestibulum sit', 'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '2021/07/13', '2022/05/14');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (9, 'Marlite Panels (FED)', 'http://dummyimage.com/132x100.png/cc0000/ffffff', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'category-9', 'nulla neque libero convallis eget', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, '2021/05/21', '2021/10/27');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (10, 'Roofing (Metal)', 'http://dummyimage.com/229x100.png/cc0000/ffffff', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'category-10', 'donec quis orci eget orci vehicula condimentum curabitur', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 0, '2021/01/30', '2022/06/17');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (11, 'Drilled Shafts', 'http://dummyimage.com/124x100.png/cc0000/ffffff', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'category-11', 'duis bibendum felis sed interdum', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2021/09/17', '2022/06/17');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (12, 'Masonry & Precast', 'http://dummyimage.com/199x100.png/ff4444/ffffff', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'category-12', 'ligula sit amet eleifend pede libero quis', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, '2020/11/06', '2022/01/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (13, 'Fire Protection', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'category-13', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 0, '2021/04/04', '2022/03/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (14, 'Roofing (Asphalt)', 'http://dummyimage.com/226x100.png/ff4444/ffffff', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'category-14', 'eros suspendisse accumsan tortor quis turpis sed ante vivamus', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '2021/04/27', '2022/10/15');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (15, 'Drilled Shafts', 'http://dummyimage.com/147x100.png/dddddd/000000', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'category-15', 'ut dolor morbi vel lectus in quam fringilla', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 0, '2020/11/18', '2022/07/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (16, 'Construction Clean and Final Clean', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'category-16', 'ipsum aliquam non mauris morbi non', 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 1, '2020/10/30', '2022/01/12');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (17, 'Landscaping & Irrigation', 'http://dummyimage.com/206x100.png/ff4444/ffffff', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'category-17', 'vulputate ut ultrices vel augue vestibulum', 'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1, '2020/12/14', '2022/06/24');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (18, 'Wall Protection', 'http://dummyimage.com/215x100.png/cc0000/ffffff', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'category-18', 'dapibus nulla suscipit ligula in lacus curabitur', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1, '2021/01/21', '2022/03/05');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (19, 'Landscaping & Irrigation', 'http://dummyimage.com/178x100.png/ff4444/ffffff', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'category-19', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '2020/10/20', '2022/09/11');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (20, 'HVAC', 'http://dummyimage.com/195x100.png/dddddd/000000', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'category-20', 'natoque penatibus et magnis dis parturient montes nascetur', 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 1, '2021/10/15', '2022/10/09');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (21, 'Marlite Panels (FED)', 'http://dummyimage.com/230x100.png/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'category-21', 'metus sapien ut nunc vestibulum', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 0, '2021/08/04', '2022/01/20');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (22, 'Drywall & Acoustical (FED)', 'http://dummyimage.com/136x100.png/dddddd/000000', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'category-22', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 0, '2021/08/10', '2022/08/26');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (23, 'Roofing (Asphalt)', 'http://dummyimage.com/116x100.png/ff4444/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'category-23', 'condimentum curabitur in libero ut massa volutpat', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 0, '2021/02/26', '2022/04/15');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (24, 'Structural and Misc Steel (Fabrication)', 'http://dummyimage.com/152x100.png/ff4444/ffffff', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'category-24', 'metus aenean fermentum donec ut mauris eget massa tempor convallis', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 1, '2021/06/14', '2021/10/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (25, 'Epoxy Flooring', 'http://dummyimage.com/242x100.png/5fa2dd/ffffff', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'category-25', 'lobortis est phasellus sit amet erat nulla', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 0, '2021/05/15', '2022/02/27');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (26, 'Framing (Steel)', 'http://dummyimage.com/175x100.png/cc0000/ffffff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'category-26', 'a pede posuere nonummy integer non velit donec', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 0, '2021/01/07', '2022/08/13');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (27, 'Elevator', 'http://dummyimage.com/223x100.png/5fa2dd/ffffff', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'category-27', 'nonummy maecenas tincidunt lacus at velit', 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, '2021/08/28', '2022/05/27');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (28, 'Structural and Misc Steel (Fabrication)', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'category-28', 'in lectus pellentesque at nulla suspendisse potenti cras in', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 0, '2021/10/06', '2022/08/20');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (29, 'Fire Protection', 'http://dummyimage.com/108x100.png/5fa2dd/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'category-29', 'proin interdum mauris non ligula pellentesque', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1, '2020/11/25', '2021/12/07');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (30, 'Asphalt Paving', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'category-30', 'mattis nibh ligula nec sem duis aliquam', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2021/01/19', '2022/05/04');



-- end category






-- start product (100)


insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (1, 'Sauce - Sesame Thai Dressing', 904940, 542964, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 37, 16, 23, 28, 978, 'product-1', 'Sauce - Sesame Thai Dressing', 'eget rutrum at lorem integer tincidunt ante vel ipsum', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/06/21', '2021/11/26');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (2, 'Bread - Corn Muffaletta', 7762487, 3182619, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 53, 19, 26, 21, 944, 'product-2', 'Bread - Corn Muffaletta', 'turpis enim blandit mi in porttitor pede justo eu massa', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/04/01', '2022/01/02');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (3, 'Turnip - Mini', 9781716, 2934514, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 9, 11, 27, 34, 610, 'product-3', 'Turnip - Mini', 'non mi integer ac neque duis bibendum morbi non', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2021/06/19', '2022/08/22');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (4, 'Bread - Raisin Walnut Oval', 3597524, 2482291, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 68, 15, 37, 30, 543, 'product-4', 'Bread - Raisin Walnut Oval', 'amet eleifend pede libero quis orci', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2021/08/07', '2022/06/25');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (5, 'Muffin - Zero Transfat', 6637419, 4646193, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 81, 11, 33, 59, 514, 'product-5', 'Muffin - Zero Transfat', 'justo in hac habitasse platea dictumst etiam faucibus', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2021/05/21', '2021/10/23');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (6, 'Squid - Breaded', 5086314, 3509556, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 31, 12, 36, 28, 483, 'product-6', 'Squid - Breaded', 'eu interdum eu tincidunt in leo maecenas', 'Fusce consequat. Nulla nisl. Nunc nisl.', '2021/03/23', '2022/09/01');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (7, 'Yams', 1403821, 1263438, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 83, 13, 35, 51, 761, 'product-7', 'Yams', 'amet erat nulla tempus vivamus in', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2021/05/20', '2021/11/25');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (8, 'Island Oasis - Cappucino Mix', 9757773, 3512798, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 36, 20, 38, 43, 692, 'product-8', 'Island Oasis - Cappucino Mix', 'eu orci mauris lacinia sapien quis libero nullam sit amet', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2021/05/17', '2022/09/27');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (9, 'Lychee', 7946115, 3814135, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 99, 15, 28, 48, 179, 'product-9', 'Lychee', 'gravida nisi at nibh in', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2021/08/03', '2022/05/22');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (10, 'Gelatine Powder', 1371969, 905499, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 81, 18, 36, 24, 386, 'product-10', 'Gelatine Powder', 'vestibulum ante ipsum primis in faucibus orci', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2020/12/05', '2022/02/09');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (11, 'Bar Mix - Lemon', 4489686, 3726439, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 33, 15, 33, 32, 756, 'product-11', 'Bar Mix - Lemon', 'rutrum nulla tellus in sagittis dui vel nisl duis', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2021/06/24', '2021/11/22');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (12, 'Garlic - Primerba, Paste', 5384365, 2799869, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 66, 16, 34, 52, 262, 'product-12', 'Garlic - Primerba, Paste', 'ipsum primis in faucibus orci', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021/09/19', '2021/12/01');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (13, 'Nantucket Cranberry Juice', 8721493, 6628334, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 2, 18, 33, 57, 140, 'product-13', 'Nantucket Cranberry Juice', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2021/08/05', '2022/09/05');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (14, 'Bagelers - Cinn / Brown', 6319890, 5561503, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 94, 12, 24, 48, 628, 'product-14', 'Bagelers - Cinn / Brown', 'rhoncus dui vel sem sed sagittis', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/04/07', '2022/05/18');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (15, 'Wood Chips - Regular', 641090, 442352, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 69, 16, 38, 53, 650, 'product-15', 'Wood Chips - Regular', 'natoque penatibus et magnis dis', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/10/02', '2022/08/31');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (16, 'Tart - Lemon', 3013003, 2109102, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 70, 11, 31, 24, 253, 'product-16', 'Tart - Lemon', 'aliquam sit amet diam in magna bibendum', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021/05/21', '2022/06/11');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (17, 'Rum - Mount Gay Eclipes', 3978063, 2983547, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 21, 19, 25, 49, 364, 'product-17', 'Rum - Mount Gay Eclipes', 'purus aliquet at feugiat non pretium quis lectus', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2021/08/01', '2022/04/01');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (18, 'Juice - Apple Cider', 1822858, 638000, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 78, 20, 24, 49, 468, 'product-18', 'Juice - Apple Cider', 'integer aliquet massa id lobortis convallis tortor risus', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2021/09/12', '2021/11/30');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (19, 'Towel - Roll White', 8759827, 5518691, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 10, 12, 20, 57, 740, 'product-19', 'Towel - Roll White', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2021/01/02', '2021/12/11');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (20, 'Pears - Fiorelle', 2756887, 1047617, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 28, 13, 31, 44, 689, 'product-20', 'Pears - Fiorelle', 'curabitur at ipsum ac tellus semper interdum', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2020/12/08', '2022/07/01');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (21, 'Bread - Italian Sesame Poly', 1995251, 1436580, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 17, 14, 35, 38, 736, 'product-21', 'Bread - Italian Sesame Poly', 'erat id mauris vulputate elementum nullam', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2021/04/06', '2021/12/12');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (22, 'Cookie Dough - Oatmeal Rasin', 352057, 302769, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 52, 15, 39, 29, 795, 'product-22', 'Cookie Dough - Oatmeal Rasin', 'curabitur in libero ut massa volutpat', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/05/02', '2022/07/05');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (23, 'Cheese - Feta', 2721607, 2422230, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 73, 16, 30, 35, 922, 'product-23', 'Cheese - Feta', 'aliquet at feugiat non pretium quis lectus', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2021/05/09', '2022/01/13');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (24, 'Strawberries', 9705018, 5240709, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 28, 14, 35, 48, 399, 'product-24', 'Strawberries', 'vel accumsan tellus nisi eu orci mauris', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2021/07/23', '2022/08/16');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (25, 'Relish', 4241480, 1781421, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 17, 11, 21, 25, 434, 'product-25', 'Relish', 'sit amet turpis elementum ligula vehicula', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2021/02/15', '2021/12/12');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (26, 'Beans - Black Bean, Preserved', 7688014, 4459048, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 57, 15, 33, 59, 818, 'product-26', 'Beans - Black Bean, Preserved', 'vivamus tortor duis mattis egestas', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2020/11/03', '2022/06/23');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (27, 'Hold Up Tool Storage Rack', 8254006, 3714302, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 15, 17, 31, 51, 854, 'product-27', 'Hold Up Tool Storage Rack', 'dapibus duis at velit eu est congue elementum', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2021/04/13', '2022/01/28');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (28, 'Juice - Apple Cider', 6968741, 5784055, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 75, 10, 27, 46, 903, 'product-28', 'Juice - Apple Cider', 'ut mauris eget massa tempor convallis nulla neque libero convallis', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2021/09/03', '2022/02/23');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (29, 'Bread Ww Cluster', 8424504, 3959516, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 16, 12, 28, 41, 237, 'product-29', 'Bread Ww Cluster', 'donec ut dolor morbi vel lectus in quam fringilla', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2020/11/25', '2022/07/31');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (30, 'Milk 2% 500 Ml', 6146028, 4425140, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 26, 16, 31, 31, 113, 'product-30', 'Milk 2% 500 Ml', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2021/05/17', '2021/11/21');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (31, 'Beef - Tender Tips', 9964939, 7374054, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 22, 13, 26, 54, 464, 'product-31', 'Beef - Tender Tips', 'venenatis tristique fusce congue diam id', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2021/03/28', '2021/11/05');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (32, 'Oregano - Fresh', 9246436, 4530753, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 68, 19, 33, 35, 249, 'product-32', 'Oregano - Fresh', 'dapibus duis at velit eu est congue elementum in hac', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2020/11/23', '2022/04/22');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (33, 'Muffin - Bran Ind Wrpd', 2997188, 959100, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 22, 19, 22, 29, 638, 'product-33', 'Muffin - Bran Ind Wrpd', 'lectus in quam fringilla rhoncus', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/04/24', '2021/11/21');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (34, 'Mix - Cocktail Strawberry Daiquiri', 8020601, 6496686, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 76, 16, 36, 26, 183, 'product-34', 'Mix - Cocktail Strawberry Daiquiri', 'est quam pharetra magna ac', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2021/01/25', '2021/12/18');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (35, 'Bread - Multigrain Oval', 3644289, 1311944, 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 68, 13, 27, 23, 257, 'product-35', 'Bread - Multigrain Oval', 'odio elementum eu interdum eu tincidunt in leo maecenas', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2021/01/13', '2022/07/11');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (36, 'Cod - Black Whole Fillet', 9191671, 6709919, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 92, 20, 29, 58, 336, 'product-36', 'Cod - Black Whole Fillet', 'hac habitasse platea dictumst aliquam augue', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2020/11/05', '2021/10/27');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (37, 'Cheese - Blue', 5539964, 1938987, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 43, 14, 29, 25, 594, 'product-37', 'Cheese - Blue', 'amet eros suspendisse accumsan tortor', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021/02/03', '2022/09/16');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (38, 'Appetizer - Crab And Brie', 1391693, 779348, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 75, 16, 25, 20, 757, 'product-38', 'Appetizer - Crab And Brie', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum', 'Fusce consequat. Nulla nisl. Nunc nisl.', '2021/09/27', '2022/04/26');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (39, 'Chinese Foods - Chicken', 7163849, 3796839, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 83, 19, 25, 55, 326, 'product-39', 'Chinese Foods - Chicken', 'lorem vitae mattis nibh ligula nec sem duis aliquam', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/01/04', '2022/06/20');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (40, 'Juice - Cranberry, 341 Ml', 8287676, 5055482, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 25, 10, 27, 41, 864, 'product-40', 'Juice - Cranberry, 341 Ml', 'sagittis sapien cum sociis natoque penatibus et', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/03/02', '2022/07/15');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (41, 'Compound - Rum', 8904006, 3917762, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 48, 18, 40, 26, 947, 'product-41', 'Compound - Rum', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2020/11/21', '2022/03/13');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (42, 'Plasticknivesblack', 6771964, 4740374, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 62, 20, 40, 37, 637, 'product-42', 'Plasticknivesblack', 'interdum venenatis turpis enim blandit mi in porttitor', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2020/11/26', '2022/10/21');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (43, 'Flour - So Mix Cake White', 452589, 181035, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 47, 10, 26, 60, 298, 'product-43', 'Flour - So Mix Cake White', 'vel nisl duis ac nibh fusce lacus', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2021/09/26', '2021/10/28');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (44, 'Coriander - Ground', 4613147, 3921174, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 54, 20, 33, 55, 108, 'product-44', 'Coriander - Ground', 'nullam sit amet turpis elementum', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/03/28', '2022/08/13');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (45, 'Capers - Pickled', 9051796, 3620718, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 19, 13, 25, 24, 561, 'product-45', 'Capers - Pickled', 'natoque penatibus et magnis dis parturient', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2021/06/13', '2022/07/08');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (46, 'Barley - Pearl', 4459765, 2140687, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 3, 13, 23, 27, 207, 'product-46', 'Barley - Pearl', 'volutpat in congue etiam justo etiam pretium iaculis justo', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/05/29', '2021/12/29');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (47, 'Vector Energy Bar', 2583747, 981823, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 30, 18, 33, 27, 904, 'product-47', 'Vector Energy Bar', 'interdum mauris non ligula pellentesque', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2020/12/06', '2022/06/15');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (48, 'Steel Wool S.o.s', 4765413, 1953819, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 55, 14, 38, 56, 603, 'product-48', 'Steel Wool S.o.s', 'sit amet eleifend pede libero quis orci nullam molestie nibh', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2021/02/02', '2022/10/14');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (49, 'Knife Plastic - White', 916615, 797455, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 96, 15, 29, 49, 182, 'product-49', 'Knife Plastic - White', 'in libero ut massa volutpat convallis morbi', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2021/06/27', '2022/04/03');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (50, 'Wine - Rhine Riesling Wolf Blass', 3722089, 1488835, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 89, 18, 26, 30, 114, 'product-50', 'Wine - Rhine Riesling Wolf Blass', 'felis ut at dolor quis odio', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2020/12/06', '2022/05/08');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (51, 'Cookies - Assorted', 144845, 105736, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 22, 19, 33, 47, 829, 'product-51', 'Cookies - Assorted', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2021/01/29', '2022/02/05');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (52, 'Beer - Molson Excel', 717421, 638504, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 11, 15, 24, 49, 991, 'product-52', 'Beer - Molson Excel', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2021/08/29', '2021/12/07');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (53, 'Turkey - Breast, Double', 9767164, 7032358, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 87, 15, 30, 51, 992, 'product-53', 'Turkey - Breast, Double', 'rhoncus aliquam lacus morbi quis tortor id nulla', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2021/02/18', '2022/01/05');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (54, 'Lamb Tenderloin Nz Fr', 3314448, 1292634, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 65, 11, 39, 53, 881, 'product-54', 'Lamb Tenderloin Nz Fr', 'vestibulum vestibulum ante ipsum primis', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021/04/07', '2022/07/25');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (55, 'Zucchini - Green', 3362310, 1008693, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 42, 16, 35, 55, 880, 'product-55', 'Zucchini - Green', 'mauris ullamcorper purus sit amet nulla quisque arcu', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2021/05/28', '2022/03/21');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (56, 'Sausage - Chorizo', 3501245, 1120398, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 97, 16, 24, 20, 592, 'product-56', 'Sausage - Chorizo', 'suspendisse potenti cras in purus eu', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2021/03/22', '2022/08/06');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (57, 'Creamers - 10%', 9294590, 2974268, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 85, 11, 32, 22, 637, 'product-57', 'Creamers - 10%', 'tincidunt in leo maecenas pulvinar', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2021/08/30', '2022/01/21');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (58, 'Spice - Chili Powder Mexican', 1020601, 408240, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 17, 10, 34, 31, 514, 'product-58', 'Spice - Chili Powder Mexican', 'hac habitasse platea dictumst etiam', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2020/11/02', '2021/12/01');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (59, 'Ham - Procutinni', 2210365, 1790395, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 70, 11, 27, 39, 700, 'product-59', 'Ham - Procutinni', 'nulla sed accumsan felis ut at dolor quis odio', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2020/11/06', '2022/03/06');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (60, 'Ecolab - Orange Frc, Cleaner', 1089002, 784081, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 28, 14, 31, 33, 744, 'product-60', 'Ecolab - Orange Frc, Cleaner', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2021/10/16', '2022/08/11');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (61, 'Wine - Rioja Campo Viejo', 8817055, 3879504, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 29, 12, 22, 48, 285, 'product-61', 'Wine - Rioja Campo Viejo', 'vestibulum sagittis sapien cum sociis natoque penatibus', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2020/11/21', '2022/01/09');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (62, 'Chinese Foods - Chicken', 4226101, 1267830, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 33, 12, 32, 50, 359, 'product-62', 'Chinese Foods - Chicken', 'gravida nisi at nibh in hac habitasse', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2021/09/22', '2022/07/11');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (63, 'Mussels - Frozen', 1120505, 918814, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 91, 10, 30, 20, 351, 'product-63', 'Mussels - Frozen', 'convallis nulla neque libero convallis eget eleifend luctus ultricies', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2020/11/09', '2022/05/08');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (64, 'Coffee - Beans, Whole', 5869989, 3874192, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 46, 19, 20, 45, 716, 'product-64', 'Coffee - Beans, Whole', 'libero quis orci nullam molestie nibh in lectus pellentesque at', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2021/02/11', '2022/04/23');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (65, 'Cheese - Mozzarella, Shredded', 4801477, 2496768, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 3, 15, 27, 23, 874, 'product-65', 'Cheese - Mozzarella, Shredded', 'morbi sem mauris laoreet ut rhoncus', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2020/11/30', '2022/03/29');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (66, 'Gherkin - Sour', 8750035, 3762515, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2, 18, 21, 27, 636, 'product-66', 'Gherkin - Sour', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2021/07/03', '2022/04/12');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (67, 'Mustard - Pommery', 780507, 577575, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 18, 14, 23, 28, 577, 'product-67', 'Mustard - Pommery', 'quis libero nullam sit amet turpis elementum ligula', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2021/01/02', '2021/10/26');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (68, 'Molasses - Fancy', 4472772, 3712400, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 58, 16, 21, 40, 838, 'product-68', 'Molasses - Fancy', 'massa volutpat convallis morbi odio odio elementum', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2021/03/26', '2021/12/09');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (69, 'Beans - Wax', 3536446, 1874316, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 57, 16, 33, 55, 480, 'product-69', 'Beans - Wax', 'dolor sit amet consectetuer adipiscing elit proin', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2020/11/18', '2022/07/26');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (70, 'Cream - 10%', 4725333, 3402239, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 26, 19, 39, 48, 540, 'product-70', 'Cream - 10%', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2021/03/25', '2021/12/27');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (71, 'Muffin - Banana Nut Individual', 3614807, 2277328, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 49, 13, 34, 29, 302, 'product-71', 'Muffin - Banana Nut Individual', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2020/11/21', '2022/07/29');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (72, 'Mix Pina Colada', 8465350, 5756438, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 41, 12, 26, 31, 472, 'product-72', 'Mix Pina Colada', 'dolor vel est donec odio justo sollicitudin ut suscipit', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2021/03/23', '2022/07/21');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (73, 'Vaccum Bag 10x13', 3199341, 1503690, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 17, 17, 23, 20, 716, 'product-73', 'Vaccum Bag 10x13', 'posuere cubilia curae mauris viverra diam', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2020/11/09', '2022/06/25');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (74, 'Pastry - Baked Cinnamon Stick', 6322505, 5184454, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 95, 20, 33, 51, 328, 'product-74', 'Pastry - Baked Cinnamon Stick', 'est quam pharetra magna ac consequat metus sapien', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2021/07/09', '2022/06/23');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (75, 'Longos - Chicken Cordon Bleu', 1466526, 1041233, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 32, 12, 39, 44, 654, 'product-75', 'Longos - Chicken Cordon Bleu', 'ante vel ipsum praesent blandit', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2020/12/31', '2022/07/15');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (76, 'Cocoa Feuilletine', 8930706, 2768518, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 17, 11, 25, 37, 149, 'product-76', 'Cocoa Feuilletine', 'dapibus dolor vel est donec odio justo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2021/05/29', '2022/07/04');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (77, 'Sobe - Lizard Fuel', 3131277, 1409074, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 34, 20, 21, 59, 414, 'product-77', 'Sobe - Lizard Fuel', 'non ligula pellentesque ultrices phasellus id sapien', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2020/12/02', '2022/03/02');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (78, 'Cheese - Gorgonzola', 8502687, 7227283, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 75, 20, 36, 52, 624, 'product-78', 'Cheese - Gorgonzola', 'potenti nullam porttitor lacus at turpis donec posuere metus', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2021/03/19', '2022/03/13');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (79, 'Bread - Crumbs, Bulk', 8421665, 3116016, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 3, 15, 31, 26, 398, 'product-79', 'Bread - Crumbs, Bulk', 'primis in faucibus orci luctus et ultrices posuere', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021/08/23', '2022/03/19');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (80, 'Turnip - Wax', 2975092, 1011531, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 75, 19, 26, 27, 975, 'product-80', 'Turnip - Wax', 'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2021/10/06', '2022/04/10');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (81, 'Appetizer - Lobster Phyllo Roll', 418449, 251069, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 81, 17, 37, 44, 924, 'product-81', 'Appetizer - Lobster Phyllo Roll', 'penatibus et magnis dis parturient', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2021/08/29', '2021/12/08');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (82, 'Wine - Stoneliegh Sauvignon', 2970733, 1574488, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 61, 17, 24, 22, 176, 'product-82', 'Wine - Stoneliegh Sauvignon', 'non mi integer ac neque duis bibendum morbi non quam', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2020/11/23', '2022/08/07');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (83, 'Tea - Decaf Lipton', 6481909, 2398306, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 17, 19, 37, 33, 108, 'product-83', 'Tea - Decaf Lipton', 'nulla ut erat id mauris vulputate', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2021/03/01', '2022/04/20');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (84, 'Nut - Pine Nuts, Whole', 2736987, 1560082, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 47, 12, 20, 58, 450, 'product-84', 'Nut - Pine Nuts, Whole', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021/07/23', '2021/12/31');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (85, 'Snapple - Mango Maddness', 4722191, 2833314, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 5, 15, 37, 32, 710, 'product-85', 'Snapple - Mango Maddness', 'bibendum morbi non quam nec dui luctus rutrum nulla', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021/07/14', '2021/12/24');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (86, 'Appetizer - Mango Chevre', 8673264, 4423364, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 39, 19, 37, 49, 706, 'product-86', 'Appetizer - Mango Chevre', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021/09/29', '2021/12/03');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (87, 'Juice - Tomato, 48 Oz', 5510430, 3196049, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 11, 15, 40, 27, 219, 'product-87', 'Juice - Tomato, 48 Oz', 'dictumst etiam faucibus cursus urna ut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2021/10/06', '2021/11/28');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (88, 'Container - Hngd Cll Blk 7x7x3', 6836536, 4785575, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 28, 15, 38, 51, 236, 'product-88', 'Container - Hngd Cll Blk 7x7x3', 'morbi a ipsum integer a nibh in quis', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2021/01/22', '2022/07/30');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (89, 'Pepper - Gypsy Pepper', 2230742, 1093063, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 26, 13, 38, 52, 476, 'product-89', 'Pepper - Gypsy Pepper', 'sit amet cursus id turpis', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2021/10/10', '2021/12/18');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (90, 'Soup - Campbellschix Stew', 3727099, 2907137, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 2, 12, 35, 47, 238, 'product-90', 'Soup - Campbellschix Stew', 'blandit non interdum in ante vestibulum ante ipsum', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2021/09/05', '2022/02/24');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (91, 'Taro Leaves', 6546762, 4517265, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 72, 10, 31, 29, 611, 'product-91', 'Taro Leaves', 'sed lacus morbi sem mauris laoreet ut rhoncus', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2021/01/19', '2022/01/15');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (92, 'Scallops - In Shell', 5357092, 2089265, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 34, 15, 30, 55, 649, 'product-92', 'Scallops - In Shell', 'maecenas tincidunt lacus at velit vivamus', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2021/02/06', '2022/09/01');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (93, 'Table Cloth 90x90 Colour', 2905334, 1045920, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 50, 16, 29, 51, 408, 'product-93', 'Table Cloth 90x90 Colour', 'tellus in sagittis dui vel nisl duis ac', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2021/04/12', '2022/05/11');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (94, 'Pork - Ham, Virginia', 2549880, 2269393, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 19, 11, 28, 23, 396, 'product-94', 'Pork - Ham, Virginia', 'ultricies eu nibh quisque id justo sit amet sapien dignissim', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2020/11/15', '2022/08/31');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (95, 'Sobe - Lizard Fuel', 4361772, 2486210, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 57, 10, 39, 52, 802, 'product-95', 'Sobe - Lizard Fuel', 'magna at nunc commodo placerat praesent', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2020/12/21', '2022/05/07');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (96, 'Jolt Cola', 1656002, 1391041, 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 57, 18, 40, 40, 578, 'product-96', 'Jolt Cola', 'a libero nam dui proin leo odio porttitor id', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2020/12/31', '2022/10/20');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (97, 'Straw - Regular', 5698538, 4102947, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 20, 15, 37, 44, 634, 'product-97', 'Straw - Regular', 'quis justo maecenas rhoncus aliquam lacus morbi', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2020/11/11', '2022/05/28');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (98, 'Wine - Port Late Bottled Vintage', 6012015, 4268530, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 9, 12, 22, 25, 869, 'product-98', 'Wine - Port Late Bottled Vintage', 'turpis adipiscing lorem vitae mattis nibh', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2020/11/08', '2021/12/18');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (99, 'Island Oasis - Pina Colada', 675836, 378468, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 80, 20, 26, 29, 133, 'product-99', 'Island Oasis - Pina Colada', 'nisi eu orci mauris lacinia sapien quis libero nullam', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2021/02/05', '2021/11/08');
insert into product (id, name, real_price, sell_price, description, full_description, stock, width, length, height, weight, slug, meta_title, meta_keyword, meta_description, create_time, mod_time) values (100, 'Buffalo - Short Rib Fresh', 3676600, 1360342, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 90, 19, 26, 59, 708, 'product-100', 'Buffalo - Short Rib Fresh', 'nullam porttitor lacus at turpis donec posuere', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/01/17', '2021/12/28');




-- end product




-- start cart (20)


insert into cart (id, user_id, status, create_time, mod_time) values (1, 1, 1, '2021/06/11', '2022/05/05');
insert into cart (id, user_id, status, create_time, mod_time) values (2, 2, 1, '2020/11/30', '2021/10/31');
insert into cart (id, user_id, status, create_time, mod_time) values (3, 3, 1, '2021/05/22', '2022/06/12');
insert into cart (id, user_id, status, create_time, mod_time) values (4, 4, 1, '2021/08/23', '2021/11/25');
insert into cart (id, user_id, status, create_time, mod_time) values (5, 5, 1, '2021/02/06', '2021/11/02');
insert into cart (id, user_id, status, create_time, mod_time) values (6, 6, 1, '2021/01/31', '2022/08/11');
insert into cart (id, user_id, status, create_time, mod_time) values (7, 7, 1, '2021/03/06', '2022/01/22');
insert into cart (id, user_id, status, create_time, mod_time) values (8, 8, 1, '2020/11/15', '2021/11/11');
insert into cart (id, user_id, status, create_time, mod_time) values (9, 9, 1, '2020/11/08', '2022/07/03');
insert into cart (id, user_id, status, create_time, mod_time) values (10, 9, 0, '2021/01/10', '2022/02/19');
insert into cart (id, user_id, status, create_time, mod_time) values (11, 8, 0, '2021/08/20', '2021/12/09');
insert into cart (id, user_id, status, create_time, mod_time) values (12, 2, 0, '2021/08/03', '2022/09/30');
insert into cart (id, user_id, status, create_time, mod_time) values (13, 9, 0, '2021/09/23', '2022/04/15');
insert into cart (id, user_id, status, create_time, mod_time) values (14, 3, 0, '2021/07/09', '2022/06/02');
insert into cart (id, user_id, status, create_time, mod_time) values (15, 9, 0, '2021/01/08', '2021/11/30');
insert into cart (id, user_id, status, create_time, mod_time) values (16, 10, 0, '2021/09/20', '2022/07/31');
insert into cart (id, user_id, status, create_time, mod_time) values (17, 3, 0, '2021/01/06', '2022/03/11');
insert into cart (id, user_id, status, create_time, mod_time) values (18, 10, 0, '2021/04/28', '2022/06/22');
insert into cart (id, user_id, status, create_time, mod_time) values (19, 4, 0, '2021/07/03', '2022/01/22');
insert into cart (id, user_id, status, create_time, mod_time) values (20, 2, 0, '2021/02/24', '2022/04/04');



-- end cart




-- start cart item (30)



insert into cart_item (id, product_id, cart_id, quantity) values (1, 4, 8, 7);
insert into cart_item (id, product_id, cart_id, quantity) values (2, 20, 18, 8);
insert into cart_item (id, product_id, cart_id, quantity) values (3, 71, 13, 3);
insert into cart_item (id, product_id, cart_id, quantity) values (4, 70, 10, 2);
insert into cart_item (id, product_id, cart_id, quantity) values (5, 46, 8, 9);
insert into cart_item (id, product_id, cart_id, quantity) values (6, 46, 18, 10);
insert into cart_item (id, product_id, cart_id, quantity) values (7, 28, 14, 1);
insert into cart_item (id, product_id, cart_id, quantity) values (8, 79, 11, 1);
insert into cart_item (id, product_id, cart_id, quantity) values (9, 87, 20, 1);
insert into cart_item (id, product_id, cart_id, quantity) values (10, 45, 13, 6);
insert into cart_item (id, product_id, cart_id, quantity) values (11, 55, 10, 4);
insert into cart_item (id, product_id, cart_id, quantity) values (12, 31, 15, 3);
insert into cart_item (id, product_id, cart_id, quantity) values (13, 94, 6, 4);
insert into cart_item (id, product_id, cart_id, quantity) values (14, 57, 3, 8);
insert into cart_item (id, product_id, cart_id, quantity) values (15, 91, 12, 10);
insert into cart_item (id, product_id, cart_id, quantity) values (16, 98, 4, 1);
insert into cart_item (id, product_id, cart_id, quantity) values (17, 60, 4, 3);
insert into cart_item (id, product_id, cart_id, quantity) values (18, 46, 6, 4);
insert into cart_item (id, product_id, cart_id, quantity) values (19, 26, 14, 10);
insert into cart_item (id, product_id, cart_id, quantity) values (20, 70, 9, 2);
insert into cart_item (id, product_id, cart_id, quantity) values (21, 31, 17, 1);
insert into cart_item (id, product_id, cart_id, quantity) values (22, 13, 5, 4);
insert into cart_item (id, product_id, cart_id, quantity) values (23, 1, 18, 2);
insert into cart_item (id, product_id, cart_id, quantity) values (24, 81, 6, 8);
insert into cart_item (id, product_id, cart_id, quantity) values (25, 70, 20, 4);
insert into cart_item (id, product_id, cart_id, quantity) values (26, 83, 4, 5);
insert into cart_item (id, product_id, cart_id, quantity) values (27, 28, 18, 8);
insert into cart_item (id, product_id, cart_id, quantity) values (28, 36, 12, 6);
insert into cart_item (id, product_id, cart_id, quantity) values (29, 73, 3, 4);
insert into cart_item (id, product_id, cart_id, quantity) values (30, 22, 13, 4);



-- end cart item



-- start shipping (11)


insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (1, 'Timmy Wardley', '7152552526', 'twardley0@networkadvertising.org', 'Alsace', 'South', 'proin interdum', '70733 Kipling Drive');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (2, 'Ajay Dy', '7029144581', 'ady1@google.com.br', 'Alberta', 'Summerview', 'vestibulum ac', '4 Victoria Hill');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (3, 'Blake Nials', '5986659122', 'bnials2@ycombinator.com', 'Alsace', 'Mandrake', 'placerat', '8 Holy Cross Avenue');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (4, 'Holmes Gartery', '3424199524', 'hgartery3@slashdot.org', 'Alberta', 'Calypso', 'cubilia', '7 Portage Way');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (5, 'Clyve Chatainier', '4145421052', 'cchatainier4@w3.org', 'Alberta', 'Hazelcrest', 'eleifend luctus', '43 Buhler Alley');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (6, 'Reidar Knowlman', '9079621044', 'rknowlman5@umich.edu', 'Alaska', 'Redwing', 'erat volutpat', '0371 Jenifer Hill');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (7, 'Genvieve Moiser', '6732419843', 'gmoiser6@yelp.com', 'Alsace', 'Fairview', 'vel', '560 Kings Circle');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (8, 'Vinny Rupel', '3881056173', 'vrupel7@istockphoto.com', 'Alsace', 'Carey', 'sit amet', '5 Summit Place');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (9, 'Baxie Connor', '7408248906', 'bconnor8@apple.com', 'Alsace', 'Dawn', 'ipsum', '4 Sherman Trail');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (10, 'Hillie MacKimm', '8499047191', 'hmackimm9@flavors.me', 'Alberta', 'Morning', 'est', '54 Prairieview Way');
insert into shipping (id, fullname, phone, email, province, district, ward, detail) values (11, 'Marijn Bennallck', '6356833352', 'mbennallcka@zdnet.com', 'Alberta', 'Dakota', 'ligula vehicula', '69930 Arizona Drive');



-- end shipping



-- start transaction(11)



insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (1, 10, 1, 5696592, 22692, 0, '2022/06/19');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (2, 11, 2, 8524906, 25249, 2, '2022/04/06');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (3, 12, 3, 2933716, 27581, 0, '2022/05/01');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (4, 13, 4, 5747679, 65020, 1, '2022/03/10');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (5, 14, 5, 5938798, 55788, 2, '2021/11/18');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (6, 15, 6, 5825354, 21737, 1, '2022/03/26');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (7, 16, 7, 5666144, 99231, 1, '2022/06/20');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (8, 17, 8, 4980320, 22957, 2, '2022/05/20');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (9, 18, 9, 9245713, 65987, 1, '2022/09/15');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (10, 19, 10, 4499995, 21621, 0, '2022/04/17');
insert into `transaction` (id, cart_id, shipping_id, product_price, ship_price, status, create_time) values (11, 20, 11, 8362224, 53786, 1, '2021/12/02');


-- end transaction





-- start rating (200)


insert into rating (id, content, create_time, star, product_id, user_id) values (1, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2021/10/24', 5, 40, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (2, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021/11/30', 5, 65, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (3, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2021/12/03', 4, 16, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2022/03/16', 5, 86, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (5, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/05/05', 4, 47, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (6, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/02/20', 4, 31, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (7, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2022/01/27', 3, 63, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (8, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/09/25', 1, 94, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (9, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2022/04/24', 5, 39, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (10, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/04/25', 2, 80, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (11, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022/09/04', 5, 47, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (12, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2022/01/27', 4, 12, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (13, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/08/28', 5, 53, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (14, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/07/16', 5, 16, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (15, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022/01/10', 1, 65, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (16, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/10/21', 4, 3, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (17, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/10/03', 4, 91, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (18, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022/02/08', 4, 41, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (19, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022/10/12', 3, 35, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (20, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/01/29', 1, 12, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (21, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021/11/08', 3, 28, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (22, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/06/22', 1, 53, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (23, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/03/04', 4, 33, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (24, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2022/10/10', 1, 69, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (25, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022/08/16', 4, 76, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (26, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2022/09/14', 4, 52, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (27, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/09/14', 3, 92, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (28, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/01/09', 1, 51, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (29, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/08/30', 3, 57, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (30, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2021/11/09', 1, 93, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (31, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/04/08', 5, 64, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (32, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022/09/22', 4, 40, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (33, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/07/24', 2, 33, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (34, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/01/22', 2, 68, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (35, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/03/18', 2, 18, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (36, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2021/10/27', 5, 44, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (37, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2022/07/26', 4, 6, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (38, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/07/19', 3, 99, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (39, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/01/03', 4, 2, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (40, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/10/16', 3, 25, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (41, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/05/02', 4, 20, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (42, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022/02/09', 4, 89, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (43, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022/04/25', 5, 11, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (44, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/09/20', 4, 59, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (45, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/01/21', 3, 50, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (46, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/10/08', 2, 100, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (47, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/09/28', 4, 25, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (48, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022/10/22', 5, 42, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (49, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/02/09', 3, 21, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (50, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/08/12', 2, 96, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (51, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022/08/02', 5, 82, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (52, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/05/09', 3, 25, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (53, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/07/07', 1, 73, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (54, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022/01/04', 4, 42, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (55, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/04/21', 3, 31, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (56, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/10/10', 4, 51, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (57, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2021/12/23', 5, 20, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (58, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/06/18', 1, 37, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (59, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/04/21', 2, 76, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (60, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/09/07', 4, 93, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (61, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2022/10/08', 3, 39, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (62, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/09/09', 5, 44, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (63, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2021/11/22', 5, 91, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (64, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2021/12/19', 4, 82, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (65, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2022/03/27', 3, 38, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (66, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/10/03', 4, 11, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (67, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/08/30', 2, 45, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (68, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/08/07', 2, 7, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (69, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/03/28', 5, 54, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (70, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2022/03/09', 2, 6, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (71, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/10/17', 3, 89, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (72, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/06/14', 3, 8, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (73, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022/01/07', 1, 67, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (74, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/04/13', 1, 42, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (75, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021/11/27', 3, 67, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (76, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/04/08', 4, 94, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (77, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/09/24', 5, 26, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (78, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/10/12', 3, 72, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (79, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/04/11', 4, 66, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (80, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2022/02/05', 1, 34, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (81, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022/04/05', 5, 45, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (82, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/03/27', 5, 31, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (83, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/04/25', 1, 36, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (84, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/10/05', 3, 8, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (85, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/01/05', 5, 59, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (86, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/01/21', 1, 64, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (87, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/10/20', 4, 66, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (88, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/12/31', 3, 67, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (89, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/09/05', 5, 31, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (90, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2022/04/14', 1, 16, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (91, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2022/05/19', 1, 89, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (92, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022/01/02', 4, 51, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (93, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/02/08', 2, 82, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (94, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/03/09', 1, 21, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (95, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/08/28', 5, 46, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (96, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2022/09/29', 2, 26, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (97, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2021/12/11', 2, 18, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (98, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022/10/11', 5, 41, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (99, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/04/11', 1, 53, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (100, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/04/09', 3, 43, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (101, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/07/22', 5, 38, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (102, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022/10/11', 3, 83, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (103, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022/10/05', 2, 85, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (104, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/08/08', 3, 40, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (105, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022/01/12', 2, 66, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (106, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2021/11/19', 1, 54, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (107, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/02/09', 4, 61, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (108, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/06/21', 4, 68, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (109, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/09/25', 1, 15, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (110, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/06/15', 2, 65, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (111, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2021/12/29', 3, 39, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (112, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2021/11/27', 3, 97, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (113, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/07/30', 5, 46, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (114, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/12/25', 5, 91, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (115, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/07/28', 2, 51, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (116, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2021/11/09', 2, 11, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (117, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2021/11/06', 1, 3, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (118, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2021/12/21', 4, 69, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (119, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2022/01/31', 1, 82, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (120, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/01/29', 1, 55, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (121, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/09/22', 1, 5, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (122, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/06/20', 5, 79, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (123, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2022/04/03', 5, 48, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (124, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/02/08', 5, 28, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (125, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2021/10/26', 5, 47, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (126, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/01/22', 5, 40, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (127, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/09/04', 2, 31, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (128, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2021/11/14', 4, 67, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (129, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/08/15', 4, 68, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (130, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/04/02', 3, 61, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (131, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2021/11/20', 1, 59, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (132, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2021/11/23', 2, 29, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (133, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/09/30', 4, 12, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (134, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/09/27', 1, 82, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (135, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2022/07/10', 4, 4, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (136, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2022/09/14', 5, 12, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (137, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2022/03/25', 1, 99, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (138, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/02/04', 1, 8, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (139, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022/03/01', 2, 77, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (140, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/07/03', 4, 89, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (141, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/05/22', 3, 24, 3);
insert into rating (id, content, create_time, star, product_id, user_id) values (142, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2021/12/26', 2, 94, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (143, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022/06/29', 3, 16, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (144, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/08/18', 3, 30, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (145, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2022/02/09', 1, 71, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (146, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/03/05', 5, 82, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (147, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/10/19', 5, 42, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (148, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/04/23', 1, 55, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (149, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2021/11/06', 5, 85, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (150, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022/09/25', 1, 97, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (151, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2022/06/29', 3, 14, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (152, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/08/01', 2, 91, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (153, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022/08/28', 4, 75, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (154, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/06/21', 1, 96, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (155, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/09/17', 3, 56, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (156, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2022/02/15', 1, 34, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (157, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/10/30', 1, 61, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (158, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/02/17', 4, 74, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (159, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021/11/02', 5, 38, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (160, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/01/14', 2, 89, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (161, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/04/08', 2, 49, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (162, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/05/12', 5, 78, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (163, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/08/05', 1, 39, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (164, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/01/03', 2, 35, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (165, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/08/31', 1, 6, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (166, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/08/12', 1, 61, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (167, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022/07/10', 5, 64, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (168, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2021/11/07', 5, 15, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (169, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2021/11/20', 1, 25, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (170, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/02/14', 1, 91, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (171, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/06/22', 2, 12, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (172, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2021/12/07', 4, 72, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (173, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022/10/10', 4, 16, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (174, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/03/30', 4, 4, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (175, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/03/21', 3, 7, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (176, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022/02/17', 4, 54, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (177, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022/05/02', 3, 56, 9);
insert into rating (id, content, create_time, star, product_id, user_id) values (178, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/01/27', 3, 86, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (179, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/09/02', 1, 77, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (180, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022/10/02', 5, 26, 2);
insert into rating (id, content, create_time, star, product_id, user_id) values (181, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/09/25', 1, 44, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (182, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022/07/21', 5, 74, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (183, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022/04/23', 2, 73, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (184, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/04/06', 2, 22, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (185, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2021/12/07', 2, 66, 1);
insert into rating (id, content, create_time, star, product_id, user_id) values (186, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022/01/29', 2, 82, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (187, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2021/12/09', 1, 16, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (188, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/08/03', 1, 13, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (189, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2021/12/31', 3, 36, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (190, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022/04/25', 4, 32, 8);
insert into rating (id, content, create_time, star, product_id, user_id) values (191, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/08/04', 5, 85, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (192, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/01/15', 4, 39, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (193, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2021/12/03', 1, 22, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (194, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2021/12/18', 3, 14, 7);
insert into rating (id, content, create_time, star, product_id, user_id) values (195, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2021/12/29', 5, 1, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (196, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/09/09', 3, 37, 5);
insert into rating (id, content, create_time, star, product_id, user_id) values (197, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022/10/20', 3, 48, 6);
insert into rating (id, content, create_time, star, product_id, user_id) values (198, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/01/03', 2, 4, 4);
insert into rating (id, content, create_time, star, product_id, user_id) values (199, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/04/20', 5, 49, 10);
insert into rating (id, content, create_time, star, product_id, user_id) values (200, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/02/08', 3, 35, 4);



-- end rating




-- start category_product 


insert into category_product (product_id, category_id) values (31, 11);
insert into category_product (product_id, category_id) values (13, 22);
insert into category_product (product_id, category_id) values (21, 29);
insert into category_product (product_id, category_id) values (4, 10);
insert into category_product (product_id, category_id) values (26, 5);
insert into category_product (product_id, category_id) values (11, 23);
insert into category_product (product_id, category_id) values (22, 18);
insert into category_product (product_id, category_id) values (38, 23);
insert into category_product (product_id, category_id) values (85, 25);
insert into category_product (product_id, category_id) values (58, 14);
insert into category_product (product_id, category_id) values (18, 8);
insert into category_product (product_id, category_id) values (56, 5);
insert into category_product (product_id, category_id) values (86, 17);
insert into category_product (product_id, category_id) values (17, 17);
insert into category_product (product_id, category_id) values (83, 29);
insert into category_product (product_id, category_id) values (94, 21);
insert into category_product (product_id, category_id) values (17, 5);
insert into category_product (product_id, category_id) values (88, 2);
insert into category_product (product_id, category_id) values (50, 2);
insert into category_product (product_id, category_id) values (71, 3);
insert into category_product (product_id, category_id) values (49, 3);
insert into category_product (product_id, category_id) values (20, 10);
insert into category_product (product_id, category_id) values (38, 21);
insert into category_product (product_id, category_id) values (73, 5);
insert into category_product (product_id, category_id) values (68, 17);
insert into category_product (product_id, category_id) values (49, 30);
insert into category_product (product_id, category_id) values (6, 2);
insert into category_product (product_id, category_id) values (11, 26);
insert into category_product (product_id, category_id) values (1, 15);
insert into category_product (product_id, category_id) values (76, 21);
insert into category_product (product_id, category_id) values (82, 18);
insert into category_product (product_id, category_id) values (69, 9);
insert into category_product (product_id, category_id) values (79, 17);
insert into category_product (product_id, category_id) values (49, 8);
insert into category_product (product_id, category_id) values (48, 6);
insert into category_product (product_id, category_id) values (9, 20);
insert into category_product (product_id, category_id) values (12, 23);
insert into category_product (product_id, category_id) values (62, 22);
insert into category_product (product_id, category_id) values (78, 15);
insert into category_product (product_id, category_id) values (80, 17);
insert into category_product (product_id, category_id) values (87, 15);
insert into category_product (product_id, category_id) values (20, 12);
insert into category_product (product_id, category_id) values (65, 9);
insert into category_product (product_id, category_id) values (1, 2);
insert into category_product (product_id, category_id) values (1, 25);
insert into category_product (product_id, category_id) values (92, 30);
insert into category_product (product_id, category_id) values (40, 22);
insert into category_product (product_id, category_id) values (35, 19);
insert into category_product (product_id, category_id) values (15, 3);
insert into category_product (product_id, category_id) values (56, 15);
insert into category_product (product_id, category_id) values (100, 4);
insert into category_product (product_id, category_id) values (29, 1);
insert into category_product (product_id, category_id) values (79, 6);
insert into category_product (product_id, category_id) values (68, 17);
insert into category_product (product_id, category_id) values (49, 1);
insert into category_product (product_id, category_id) values (67, 9);
insert into category_product (product_id, category_id) values (95, 27);
insert into category_product (product_id, category_id) values (28, 24);
insert into category_product (product_id, category_id) values (23, 6);
insert into category_product (product_id, category_id) values (88, 11);
insert into category_product (product_id, category_id) values (3, 25);
insert into category_product (product_id, category_id) values (69, 23);
insert into category_product (product_id, category_id) values (51, 8);
insert into category_product (product_id, category_id) values (44, 3);
insert into category_product (product_id, category_id) values (58, 27);
insert into category_product (product_id, category_id) values (16, 19);
insert into category_product (product_id, category_id) values (41, 25);
insert into category_product (product_id, category_id) values (43, 19);
insert into category_product (product_id, category_id) values (81, 20);
insert into category_product (product_id, category_id) values (95, 23);
insert into category_product (product_id, category_id) values (24, 8);
insert into category_product (product_id, category_id) values (26, 25);
insert into category_product (product_id, category_id) values (70, 18);
insert into category_product (product_id, category_id) values (9, 24);
insert into category_product (product_id, category_id) values (5, 3);
insert into category_product (product_id, category_id) values (56, 16);
insert into category_product (product_id, category_id) values (70, 6);
insert into category_product (product_id, category_id) values (66, 12);
insert into category_product (product_id, category_id) values (89, 1);
insert into category_product (product_id, category_id) values (74, 6);
insert into category_product (product_id, category_id) values (65, 15);
insert into category_product (product_id, category_id) values (5, 4);
insert into category_product (product_id, category_id) values (68, 10);
insert into category_product (product_id, category_id) values (77, 13);
insert into category_product (product_id, category_id) values (65, 21);
insert into category_product (product_id, category_id) values (55, 29);
insert into category_product (product_id, category_id) values (24, 28);
insert into category_product (product_id, category_id) values (81, 19);
insert into category_product (product_id, category_id) values (71, 18);
insert into category_product (product_id, category_id) values (3, 19);
insert into category_product (product_id, category_id) values (74, 26);
insert into category_product (product_id, category_id) values (69, 13);
insert into category_product (product_id, category_id) values (74, 14);
insert into category_product (product_id, category_id) values (37, 25);
insert into category_product (product_id, category_id) values (50, 19);
insert into category_product (product_id, category_id) values (93, 15);
insert into category_product (product_id, category_id) values (54, 10);
insert into category_product (product_id, category_id) values (44, 23);
insert into category_product (product_id, category_id) values (100, 26);
insert into category_product (product_id, category_id) values (25, 21);
insert into category_product (product_id, category_id) values (22, 12);
insert into category_product (product_id, category_id) values (24, 9);
insert into category_product (product_id, category_id) values (41, 18);
insert into category_product (product_id, category_id) values (36, 7);
insert into category_product (product_id, category_id) values (1, 19);
insert into category_product (product_id, category_id) values (44, 10);
insert into category_product (product_id, category_id) values (35, 4);
insert into category_product (product_id, category_id) values (74, 21);
insert into category_product (product_id, category_id) values (29, 5);
insert into category_product (product_id, category_id) values (48, 22);
insert into category_product (product_id, category_id) values (47, 10);
insert into category_product (product_id, category_id) values (58, 29);
insert into category_product (product_id, category_id) values (79, 25);
insert into category_product (product_id, category_id) values (31, 28);
insert into category_product (product_id, category_id) values (56, 18);
insert into category_product (product_id, category_id) values (74, 19);
insert into category_product (product_id, category_id) values (10, 30);
insert into category_product (product_id, category_id) values (81, 3);
insert into category_product (product_id, category_id) values (1, 30);
insert into category_product (product_id, category_id) values (62, 13);
insert into category_product (product_id, category_id) values (72, 4);
insert into category_product (product_id, category_id) values (66, 12);
insert into category_product (product_id, category_id) values (91, 22);
insert into category_product (product_id, category_id) values (61, 21);
insert into category_product (product_id, category_id) values (40, 10);
insert into category_product (product_id, category_id) values (77, 17);
insert into category_product (product_id, category_id) values (76, 30);
insert into category_product (product_id, category_id) values (88, 6);
insert into category_product (product_id, category_id) values (37, 15);
insert into category_product (product_id, category_id) values (100, 19);
insert into category_product (product_id, category_id) values (61, 4);
insert into category_product (product_id, category_id) values (8, 30);
insert into category_product (product_id, category_id) values (71, 30);
insert into category_product (product_id, category_id) values (23, 1);
insert into category_product (product_id, category_id) values (81, 5);
insert into category_product (product_id, category_id) values (14, 28);
insert into category_product (product_id, category_id) values (19, 25);
insert into category_product (product_id, category_id) values (100, 1);
insert into category_product (product_id, category_id) values (50, 9);
insert into category_product (product_id, category_id) values (1, 20);
insert into category_product (product_id, category_id) values (13, 17);
insert into category_product (product_id, category_id) values (21, 4);
insert into category_product (product_id, category_id) values (55, 26);
insert into category_product (product_id, category_id) values (24, 5);
insert into category_product (product_id, category_id) values (89, 14);
insert into category_product (product_id, category_id) values (33, 26);
insert into category_product (product_id, category_id) values (6, 21);
insert into category_product (product_id, category_id) values (11, 26);
insert into category_product (product_id, category_id) values (48, 10);
insert into category_product (product_id, category_id) values (90, 8);
insert into category_product (product_id, category_id) values (38, 6);
insert into category_product (product_id, category_id) values (96, 19);
insert into category_product (product_id, category_id) values (64, 13);
insert into category_product (product_id, category_id) values (36, 26);
insert into category_product (product_id, category_id) values (68, 21);
insert into category_product (product_id, category_id) values (58, 10);
insert into category_product (product_id, category_id) values (87, 14);
insert into category_product (product_id, category_id) values (15, 6);
insert into category_product (product_id, category_id) values (30, 4);
insert into category_product (product_id, category_id) values (96, 25);
insert into category_product (product_id, category_id) values (7, 22);
insert into category_product (product_id, category_id) values (98, 10);
insert into category_product (product_id, category_id) values (24, 8);
insert into category_product (product_id, category_id) values (76, 4);
insert into category_product (product_id, category_id) values (94, 23);
insert into category_product (product_id, category_id) values (30, 30);
insert into category_product (product_id, category_id) values (24, 28);
insert into category_product (product_id, category_id) values (33, 3);
insert into category_product (product_id, category_id) values (76, 22);
insert into category_product (product_id, category_id) values (64, 9);
insert into category_product (product_id, category_id) values (86, 11);
insert into category_product (product_id, category_id) values (76, 16);
insert into category_product (product_id, category_id) values (32, 29);
insert into category_product (product_id, category_id) values (17, 3);
insert into category_product (product_id, category_id) values (26, 18);
insert into category_product (product_id, category_id) values (35, 27);
insert into category_product (product_id, category_id) values (86, 20);
insert into category_product (product_id, category_id) values (73, 16);
insert into category_product (product_id, category_id) values (67, 21);
insert into category_product (product_id, category_id) values (44, 5);
insert into category_product (product_id, category_id) values (74, 4);
insert into category_product (product_id, category_id) values (88, 25);
insert into category_product (product_id, category_id) values (73, 2);
insert into category_product (product_id, category_id) values (13, 16);
insert into category_product (product_id, category_id) values (57, 26);
insert into category_product (product_id, category_id) values (50, 23);
insert into category_product (product_id, category_id) values (50, 23);
insert into category_product (product_id, category_id) values (50, 5);
insert into category_product (product_id, category_id) values (51, 10);
insert into category_product (product_id, category_id) values (93, 24);
insert into category_product (product_id, category_id) values (74, 28);
insert into category_product (product_id, category_id) values (43, 10);
insert into category_product (product_id, category_id) values (60, 1);
insert into category_product (product_id, category_id) values (85, 11);
insert into category_product (product_id, category_id) values (29, 1);
insert into category_product (product_id, category_id) values (94, 27);
insert into category_product (product_id, category_id) values (83, 20);
insert into category_product (product_id, category_id) values (27, 27);
insert into category_product (product_id, category_id) values (97, 21);
insert into category_product (product_id, category_id) values (83, 11);




-- end category_product





-- start product image


insert into product_image (id, image, product_id) values (1, 'http://dummyimage.com/195x149.png/cc0000/ffffff', 59);
insert into product_image (id, image, product_id) values (2, 'http://dummyimage.com/161x210.png/cc0000/ffffff', 75);
insert into product_image (id, image, product_id) values (3, 'http://dummyimage.com/240x153.png/5fa2dd/ffffff', 13);
insert into product_image (id, image, product_id) values (4, 'http://dummyimage.com/195x210.png/ff4444/ffffff', 70);
insert into product_image (id, image, product_id) values (5, 'http://dummyimage.com/167x131.png/ff4444/ffffff', 42);
insert into product_image (id, image, product_id) values (6, 'http://dummyimage.com/244x249.png/ff4444/ffffff', 76);
insert into product_image (id, image, product_id) values (7, 'http://dummyimage.com/135x207.png/5fa2dd/ffffff', 9);
insert into product_image (id, image, product_id) values (8, 'http://dummyimage.com/140x120.png/dddddd/000000', 98);
insert into product_image (id, image, product_id) values (9, 'http://dummyimage.com/191x130.png/ff4444/ffffff', 41);
insert into product_image (id, image, product_id) values (10, 'http://dummyimage.com/172x128.png/cc0000/ffffff', 26);
insert into product_image (id, image, product_id) values (11, 'http://dummyimage.com/107x106.png/cc0000/ffffff', 15);
insert into product_image (id, image, product_id) values (12, 'http://dummyimage.com/170x173.png/dddddd/000000', 42);
insert into product_image (id, image, product_id) values (13, 'http://dummyimage.com/227x243.png/dddddd/000000', 93);
insert into product_image (id, image, product_id) values (14, 'http://dummyimage.com/243x223.png/dddddd/000000', 88);
insert into product_image (id, image, product_id) values (15, 'http://dummyimage.com/179x247.png/cc0000/ffffff', 35);
insert into product_image (id, image, product_id) values (16, 'http://dummyimage.com/244x189.png/cc0000/ffffff', 8);
insert into product_image (id, image, product_id) values (17, 'http://dummyimage.com/220x248.png/ff4444/ffffff', 87);
insert into product_image (id, image, product_id) values (18, 'http://dummyimage.com/155x206.png/ff4444/ffffff', 40);
insert into product_image (id, image, product_id) values (19, 'http://dummyimage.com/113x203.png/5fa2dd/ffffff', 94);
insert into product_image (id, image, product_id) values (20, 'http://dummyimage.com/234x238.png/cc0000/ffffff', 71);
insert into product_image (id, image, product_id) values (21, 'http://dummyimage.com/171x108.png/dddddd/000000', 92);
insert into product_image (id, image, product_id) values (22, 'http://dummyimage.com/177x124.png/ff4444/ffffff', 49);
insert into product_image (id, image, product_id) values (23, 'http://dummyimage.com/176x115.png/ff4444/ffffff', 34);
insert into product_image (id, image, product_id) values (24, 'http://dummyimage.com/169x141.png/ff4444/ffffff', 93);
insert into product_image (id, image, product_id) values (25, 'http://dummyimage.com/164x138.png/cc0000/ffffff', 79);
insert into product_image (id, image, product_id) values (26, 'http://dummyimage.com/212x143.png/dddddd/000000', 86);
insert into product_image (id, image, product_id) values (27, 'http://dummyimage.com/100x146.png/dddddd/000000', 97);
insert into product_image (id, image, product_id) values (28, 'http://dummyimage.com/152x211.png/cc0000/ffffff', 14);
insert into product_image (id, image, product_id) values (29, 'http://dummyimage.com/162x139.png/ff4444/ffffff', 28);
insert into product_image (id, image, product_id) values (30, 'http://dummyimage.com/228x112.png/cc0000/ffffff', 45);
insert into product_image (id, image, product_id) values (31, 'http://dummyimage.com/242x212.png/cc0000/ffffff', 33);
insert into product_image (id, image, product_id) values (32, 'http://dummyimage.com/178x151.png/dddddd/000000', 61);
insert into product_image (id, image, product_id) values (33, 'http://dummyimage.com/174x192.png/ff4444/ffffff', 46);
insert into product_image (id, image, product_id) values (34, 'http://dummyimage.com/163x221.png/cc0000/ffffff', 14);
insert into product_image (id, image, product_id) values (35, 'http://dummyimage.com/130x174.png/dddddd/000000', 64);
insert into product_image (id, image, product_id) values (36, 'http://dummyimage.com/130x245.png/cc0000/ffffff', 65);
insert into product_image (id, image, product_id) values (37, 'http://dummyimage.com/201x102.png/cc0000/ffffff', 67);
insert into product_image (id, image, product_id) values (38, 'http://dummyimage.com/143x198.png/ff4444/ffffff', 8);
insert into product_image (id, image, product_id) values (39, 'http://dummyimage.com/163x113.png/cc0000/ffffff', 29);
insert into product_image (id, image, product_id) values (40, 'http://dummyimage.com/216x125.png/cc0000/ffffff', 68);
insert into product_image (id, image, product_id) values (41, 'http://dummyimage.com/244x191.png/cc0000/ffffff', 9);
insert into product_image (id, image, product_id) values (42, 'http://dummyimage.com/141x105.png/5fa2dd/ffffff', 12);
insert into product_image (id, image, product_id) values (43, 'http://dummyimage.com/117x197.png/5fa2dd/ffffff', 15);
insert into product_image (id, image, product_id) values (44, 'http://dummyimage.com/137x159.png/dddddd/000000', 22);
insert into product_image (id, image, product_id) values (45, 'http://dummyimage.com/161x101.png/dddddd/000000', 37);
insert into product_image (id, image, product_id) values (46, 'http://dummyimage.com/195x244.png/ff4444/ffffff', 51);
insert into product_image (id, image, product_id) values (47, 'http://dummyimage.com/110x152.png/dddddd/000000', 36);
insert into product_image (id, image, product_id) values (48, 'http://dummyimage.com/213x179.png/ff4444/ffffff', 62);
insert into product_image (id, image, product_id) values (49, 'http://dummyimage.com/124x148.png/5fa2dd/ffffff', 29);
insert into product_image (id, image, product_id) values (50, 'http://dummyimage.com/211x167.png/5fa2dd/ffffff', 35);
insert into product_image (id, image, product_id) values (51, 'http://dummyimage.com/198x123.png/5fa2dd/ffffff', 41);
insert into product_image (id, image, product_id) values (52, 'http://dummyimage.com/118x191.png/ff4444/ffffff', 38);
insert into product_image (id, image, product_id) values (53, 'http://dummyimage.com/164x191.png/5fa2dd/ffffff', 22);
insert into product_image (id, image, product_id) values (54, 'http://dummyimage.com/159x184.png/ff4444/ffffff', 16);
insert into product_image (id, image, product_id) values (55, 'http://dummyimage.com/162x187.png/5fa2dd/ffffff', 9);
insert into product_image (id, image, product_id) values (56, 'http://dummyimage.com/137x185.png/ff4444/ffffff', 61);
insert into product_image (id, image, product_id) values (57, 'http://dummyimage.com/119x193.png/cc0000/ffffff', 25);
insert into product_image (id, image, product_id) values (58, 'http://dummyimage.com/105x241.png/cc0000/ffffff', 77);
insert into product_image (id, image, product_id) values (59, 'http://dummyimage.com/214x224.png/cc0000/ffffff', 91);
insert into product_image (id, image, product_id) values (60, 'http://dummyimage.com/196x238.png/dddddd/000000', 25);
insert into product_image (id, image, product_id) values (61, 'http://dummyimage.com/109x232.png/5fa2dd/ffffff', 79);
insert into product_image (id, image, product_id) values (62, 'http://dummyimage.com/208x173.png/ff4444/ffffff', 78);
insert into product_image (id, image, product_id) values (63, 'http://dummyimage.com/221x217.png/dddddd/000000', 43);
insert into product_image (id, image, product_id) values (64, 'http://dummyimage.com/100x120.png/5fa2dd/ffffff', 3);
insert into product_image (id, image, product_id) values (65, 'http://dummyimage.com/233x154.png/5fa2dd/ffffff', 3);
insert into product_image (id, image, product_id) values (66, 'http://dummyimage.com/162x199.png/dddddd/000000', 72);
insert into product_image (id, image, product_id) values (67, 'http://dummyimage.com/156x216.png/5fa2dd/ffffff', 92);
insert into product_image (id, image, product_id) values (68, 'http://dummyimage.com/152x196.png/5fa2dd/ffffff', 58);
insert into product_image (id, image, product_id) values (69, 'http://dummyimage.com/180x115.png/ff4444/ffffff', 41);
insert into product_image (id, image, product_id) values (70, 'http://dummyimage.com/168x235.png/ff4444/ffffff', 68);
insert into product_image (id, image, product_id) values (71, 'http://dummyimage.com/150x183.png/ff4444/ffffff', 87);
insert into product_image (id, image, product_id) values (72, 'http://dummyimage.com/126x117.png/dddddd/000000', 46);
insert into product_image (id, image, product_id) values (73, 'http://dummyimage.com/145x123.png/ff4444/ffffff', 100);
insert into product_image (id, image, product_id) values (74, 'http://dummyimage.com/216x235.png/ff4444/ffffff', 79);
insert into product_image (id, image, product_id) values (75, 'http://dummyimage.com/240x180.png/5fa2dd/ffffff', 75);
insert into product_image (id, image, product_id) values (76, 'http://dummyimage.com/239x133.png/cc0000/ffffff', 51);
insert into product_image (id, image, product_id) values (77, 'http://dummyimage.com/186x211.png/dddddd/000000', 2);
insert into product_image (id, image, product_id) values (78, 'http://dummyimage.com/155x210.png/ff4444/ffffff', 29);
insert into product_image (id, image, product_id) values (79, 'http://dummyimage.com/227x230.png/cc0000/ffffff', 59);
insert into product_image (id, image, product_id) values (80, 'http://dummyimage.com/176x171.png/ff4444/ffffff', 47);
insert into product_image (id, image, product_id) values (81, 'http://dummyimage.com/226x150.png/dddddd/000000', 48);
insert into product_image (id, image, product_id) values (82, 'http://dummyimage.com/141x210.png/dddddd/000000', 70);
insert into product_image (id, image, product_id) values (83, 'http://dummyimage.com/229x227.png/5fa2dd/ffffff', 22);
insert into product_image (id, image, product_id) values (84, 'http://dummyimage.com/173x150.png/ff4444/ffffff', 100);
insert into product_image (id, image, product_id) values (85, 'http://dummyimage.com/197x159.png/dddddd/000000', 97);
insert into product_image (id, image, product_id) values (86, 'http://dummyimage.com/240x209.png/5fa2dd/ffffff', 60);
insert into product_image (id, image, product_id) values (87, 'http://dummyimage.com/187x123.png/ff4444/ffffff', 32);
insert into product_image (id, image, product_id) values (88, 'http://dummyimage.com/101x182.png/cc0000/ffffff', 54);
insert into product_image (id, image, product_id) values (89, 'http://dummyimage.com/128x239.png/ff4444/ffffff', 89);
insert into product_image (id, image, product_id) values (90, 'http://dummyimage.com/216x171.png/ff4444/ffffff', 48);
insert into product_image (id, image, product_id) values (91, 'http://dummyimage.com/184x180.png/dddddd/000000', 63);
insert into product_image (id, image, product_id) values (92, 'http://dummyimage.com/208x149.png/dddddd/000000', 83);
insert into product_image (id, image, product_id) values (93, 'http://dummyimage.com/200x209.png/ff4444/ffffff', 91);
insert into product_image (id, image, product_id) values (94, 'http://dummyimage.com/189x163.png/ff4444/ffffff', 79);
insert into product_image (id, image, product_id) values (95, 'http://dummyimage.com/231x247.png/cc0000/ffffff', 50);
insert into product_image (id, image, product_id) values (96, 'http://dummyimage.com/105x122.png/5fa2dd/ffffff', 69);
insert into product_image (id, image, product_id) values (97, 'http://dummyimage.com/174x205.png/dddddd/000000', 12);
insert into product_image (id, image, product_id) values (98, 'http://dummyimage.com/108x148.png/dddddd/000000', 74);
insert into product_image (id, image, product_id) values (99, 'http://dummyimage.com/226x217.png/5fa2dd/ffffff', 30);
insert into product_image (id, image, product_id) values (100, 'http://dummyimage.com/250x145.png/cc0000/ffffff', 36);
insert into product_image (id, image, product_id) values (101, 'http://dummyimage.com/220x127.png/ff4444/ffffff', 94);
insert into product_image (id, image, product_id) values (102, 'http://dummyimage.com/169x186.png/5fa2dd/ffffff', 24);
insert into product_image (id, image, product_id) values (103, 'http://dummyimage.com/232x163.png/ff4444/ffffff', 64);
insert into product_image (id, image, product_id) values (104, 'http://dummyimage.com/242x233.png/ff4444/ffffff', 29);
insert into product_image (id, image, product_id) values (105, 'http://dummyimage.com/124x101.png/dddddd/000000', 33);
insert into product_image (id, image, product_id) values (106, 'http://dummyimage.com/107x213.png/cc0000/ffffff', 72);
insert into product_image (id, image, product_id) values (107, 'http://dummyimage.com/225x103.png/ff4444/ffffff', 21);
insert into product_image (id, image, product_id) values (108, 'http://dummyimage.com/136x227.png/dddddd/000000', 6);
insert into product_image (id, image, product_id) values (109, 'http://dummyimage.com/113x172.png/dddddd/000000', 50);
insert into product_image (id, image, product_id) values (110, 'http://dummyimage.com/245x210.png/ff4444/ffffff', 58);
insert into product_image (id, image, product_id) values (111, 'http://dummyimage.com/150x213.png/5fa2dd/ffffff', 3);
insert into product_image (id, image, product_id) values (112, 'http://dummyimage.com/195x183.png/ff4444/ffffff', 40);
insert into product_image (id, image, product_id) values (113, 'http://dummyimage.com/163x226.png/cc0000/ffffff', 61);
insert into product_image (id, image, product_id) values (114, 'http://dummyimage.com/122x105.png/dddddd/000000', 14);
insert into product_image (id, image, product_id) values (115, 'http://dummyimage.com/241x142.png/5fa2dd/ffffff', 51);
insert into product_image (id, image, product_id) values (116, 'http://dummyimage.com/168x237.png/5fa2dd/ffffff', 45);
insert into product_image (id, image, product_id) values (117, 'http://dummyimage.com/102x230.png/cc0000/ffffff', 66);
insert into product_image (id, image, product_id) values (118, 'http://dummyimage.com/100x231.png/5fa2dd/ffffff', 80);
insert into product_image (id, image, product_id) values (119, 'http://dummyimage.com/240x221.png/dddddd/000000', 60);
insert into product_image (id, image, product_id) values (120, 'http://dummyimage.com/217x249.png/ff4444/ffffff', 23);
insert into product_image (id, image, product_id) values (121, 'http://dummyimage.com/148x232.png/5fa2dd/ffffff', 78);
insert into product_image (id, image, product_id) values (122, 'http://dummyimage.com/153x169.png/dddddd/000000', 11);
insert into product_image (id, image, product_id) values (123, 'http://dummyimage.com/168x194.png/dddddd/000000', 29);
insert into product_image (id, image, product_id) values (124, 'http://dummyimage.com/140x241.png/ff4444/ffffff', 31);
insert into product_image (id, image, product_id) values (125, 'http://dummyimage.com/139x246.png/ff4444/ffffff', 71);
insert into product_image (id, image, product_id) values (126, 'http://dummyimage.com/148x105.png/dddddd/000000', 97);
insert into product_image (id, image, product_id) values (127, 'http://dummyimage.com/153x119.png/cc0000/ffffff', 40);
insert into product_image (id, image, product_id) values (128, 'http://dummyimage.com/219x241.png/cc0000/ffffff', 82);
insert into product_image (id, image, product_id) values (129, 'http://dummyimage.com/215x245.png/ff4444/ffffff', 15);
insert into product_image (id, image, product_id) values (130, 'http://dummyimage.com/173x137.png/5fa2dd/ffffff', 38);
insert into product_image (id, image, product_id) values (131, 'http://dummyimage.com/111x151.png/5fa2dd/ffffff', 23);
insert into product_image (id, image, product_id) values (132, 'http://dummyimage.com/174x228.png/dddddd/000000', 85);
insert into product_image (id, image, product_id) values (133, 'http://dummyimage.com/182x214.png/ff4444/ffffff', 83);
insert into product_image (id, image, product_id) values (134, 'http://dummyimage.com/147x214.png/cc0000/ffffff', 96);
insert into product_image (id, image, product_id) values (135, 'http://dummyimage.com/163x133.png/cc0000/ffffff', 30);
insert into product_image (id, image, product_id) values (136, 'http://dummyimage.com/165x216.png/dddddd/000000', 70);
insert into product_image (id, image, product_id) values (137, 'http://dummyimage.com/163x228.png/dddddd/000000', 67);
insert into product_image (id, image, product_id) values (138, 'http://dummyimage.com/181x224.png/5fa2dd/ffffff', 86);
insert into product_image (id, image, product_id) values (139, 'http://dummyimage.com/131x213.png/cc0000/ffffff', 92);
insert into product_image (id, image, product_id) values (140, 'http://dummyimage.com/174x184.png/5fa2dd/ffffff', 69);
insert into product_image (id, image, product_id) values (141, 'http://dummyimage.com/145x158.png/cc0000/ffffff', 33);
insert into product_image (id, image, product_id) values (142, 'http://dummyimage.com/235x224.png/5fa2dd/ffffff', 3);
insert into product_image (id, image, product_id) values (143, 'http://dummyimage.com/181x163.png/5fa2dd/ffffff', 28);
insert into product_image (id, image, product_id) values (144, 'http://dummyimage.com/106x130.png/ff4444/ffffff', 91);
insert into product_image (id, image, product_id) values (145, 'http://dummyimage.com/231x171.png/5fa2dd/ffffff', 66);
insert into product_image (id, image, product_id) values (146, 'http://dummyimage.com/194x160.png/cc0000/ffffff', 76);
insert into product_image (id, image, product_id) values (147, 'http://dummyimage.com/219x186.png/ff4444/ffffff', 84);
insert into product_image (id, image, product_id) values (148, 'http://dummyimage.com/113x108.png/ff4444/ffffff', 87);
insert into product_image (id, image, product_id) values (149, 'http://dummyimage.com/140x171.png/ff4444/ffffff', 27);
insert into product_image (id, image, product_id) values (150, 'http://dummyimage.com/100x237.png/ff4444/ffffff', 3);
insert into product_image (id, image, product_id) values (151, 'http://dummyimage.com/233x182.png/dddddd/000000', 88);
insert into product_image (id, image, product_id) values (152, 'http://dummyimage.com/184x231.png/5fa2dd/ffffff', 71);
insert into product_image (id, image, product_id) values (153, 'http://dummyimage.com/138x220.png/dddddd/000000', 13);
insert into product_image (id, image, product_id) values (154, 'http://dummyimage.com/111x182.png/5fa2dd/ffffff', 19);
insert into product_image (id, image, product_id) values (155, 'http://dummyimage.com/229x176.png/ff4444/ffffff', 95);
insert into product_image (id, image, product_id) values (156, 'http://dummyimage.com/242x225.png/cc0000/ffffff', 7);
insert into product_image (id, image, product_id) values (157, 'http://dummyimage.com/133x123.png/5fa2dd/ffffff', 94);
insert into product_image (id, image, product_id) values (158, 'http://dummyimage.com/176x102.png/dddddd/000000', 72);
insert into product_image (id, image, product_id) values (159, 'http://dummyimage.com/244x231.png/5fa2dd/ffffff', 24);
insert into product_image (id, image, product_id) values (160, 'http://dummyimage.com/129x187.png/dddddd/000000', 67);
insert into product_image (id, image, product_id) values (161, 'http://dummyimage.com/237x168.png/cc0000/ffffff', 88);
insert into product_image (id, image, product_id) values (162, 'http://dummyimage.com/221x196.png/5fa2dd/ffffff', 42);
insert into product_image (id, image, product_id) values (163, 'http://dummyimage.com/197x235.png/5fa2dd/ffffff', 20);
insert into product_image (id, image, product_id) values (164, 'http://dummyimage.com/208x243.png/dddddd/000000', 99);
insert into product_image (id, image, product_id) values (165, 'http://dummyimage.com/119x182.png/ff4444/ffffff', 62);
insert into product_image (id, image, product_id) values (166, 'http://dummyimage.com/235x125.png/dddddd/000000', 57);
insert into product_image (id, image, product_id) values (167, 'http://dummyimage.com/248x169.png/ff4444/ffffff', 89);
insert into product_image (id, image, product_id) values (168, 'http://dummyimage.com/172x133.png/dddddd/000000', 79);
insert into product_image (id, image, product_id) values (169, 'http://dummyimage.com/220x106.png/cc0000/ffffff', 81);
insert into product_image (id, image, product_id) values (170, 'http://dummyimage.com/127x213.png/dddddd/000000', 26);
insert into product_image (id, image, product_id) values (171, 'http://dummyimage.com/239x112.png/ff4444/ffffff', 36);
insert into product_image (id, image, product_id) values (172, 'http://dummyimage.com/140x160.png/dddddd/000000', 64);
insert into product_image (id, image, product_id) values (173, 'http://dummyimage.com/120x196.png/ff4444/ffffff', 89);
insert into product_image (id, image, product_id) values (174, 'http://dummyimage.com/127x207.png/5fa2dd/ffffff', 68);
insert into product_image (id, image, product_id) values (175, 'http://dummyimage.com/142x202.png/dddddd/000000', 27);
insert into product_image (id, image, product_id) values (176, 'http://dummyimage.com/209x119.png/cc0000/ffffff', 40);
insert into product_image (id, image, product_id) values (177, 'http://dummyimage.com/165x206.png/cc0000/ffffff', 90);
insert into product_image (id, image, product_id) values (178, 'http://dummyimage.com/122x232.png/cc0000/ffffff', 27);
insert into product_image (id, image, product_id) values (179, 'http://dummyimage.com/193x141.png/dddddd/000000', 30);
insert into product_image (id, image, product_id) values (180, 'http://dummyimage.com/237x126.png/cc0000/ffffff', 25);
insert into product_image (id, image, product_id) values (181, 'http://dummyimage.com/197x214.png/5fa2dd/ffffff', 59);
insert into product_image (id, image, product_id) values (182, 'http://dummyimage.com/126x166.png/dddddd/000000', 1);
insert into product_image (id, image, product_id) values (183, 'http://dummyimage.com/126x230.png/ff4444/ffffff', 51);
insert into product_image (id, image, product_id) values (184, 'http://dummyimage.com/194x110.png/ff4444/ffffff', 77);
insert into product_image (id, image, product_id) values (185, 'http://dummyimage.com/196x136.png/ff4444/ffffff', 19);
insert into product_image (id, image, product_id) values (186, 'http://dummyimage.com/158x231.png/dddddd/000000', 34);
insert into product_image (id, image, product_id) values (187, 'http://dummyimage.com/127x161.png/5fa2dd/ffffff', 11);
insert into product_image (id, image, product_id) values (188, 'http://dummyimage.com/133x136.png/ff4444/ffffff', 77);
insert into product_image (id, image, product_id) values (189, 'http://dummyimage.com/242x151.png/ff4444/ffffff', 15);
insert into product_image (id, image, product_id) values (190, 'http://dummyimage.com/217x144.png/ff4444/ffffff', 12);
insert into product_image (id, image, product_id) values (191, 'http://dummyimage.com/170x173.png/5fa2dd/ffffff', 66);
insert into product_image (id, image, product_id) values (192, 'http://dummyimage.com/108x246.png/ff4444/ffffff', 52);
insert into product_image (id, image, product_id) values (193, 'http://dummyimage.com/128x249.png/ff4444/ffffff', 3);
insert into product_image (id, image, product_id) values (194, 'http://dummyimage.com/244x182.png/ff4444/ffffff', 45);
insert into product_image (id, image, product_id) values (195, 'http://dummyimage.com/112x240.png/ff4444/ffffff', 66);
insert into product_image (id, image, product_id) values (196, 'http://dummyimage.com/214x140.png/ff4444/ffffff', 93);
insert into product_image (id, image, product_id) values (197, 'http://dummyimage.com/224x247.png/cc0000/ffffff', 8);
insert into product_image (id, image, product_id) values (198, 'http://dummyimage.com/160x190.png/5fa2dd/ffffff', 86);
insert into product_image (id, image, product_id) values (199, 'http://dummyimage.com/155x200.png/ff4444/ffffff', 61);
insert into product_image (id, image, product_id) values (200, 'http://dummyimage.com/220x219.png/cc0000/ffffff', 95);
insert into product_image (id, image, product_id) values (201, 'http://dummyimage.com/129x155.png/cc0000/ffffff', 60);
insert into product_image (id, image, product_id) values (202, 'http://dummyimage.com/188x167.png/dddddd/000000', 6);
insert into product_image (id, image, product_id) values (203, 'http://dummyimage.com/215x166.png/5fa2dd/ffffff', 75);
insert into product_image (id, image, product_id) values (204, 'http://dummyimage.com/109x199.png/cc0000/ffffff', 31);
insert into product_image (id, image, product_id) values (205, 'http://dummyimage.com/143x182.png/ff4444/ffffff', 84);
insert into product_image (id, image, product_id) values (206, 'http://dummyimage.com/158x225.png/5fa2dd/ffffff', 62);
insert into product_image (id, image, product_id) values (207, 'http://dummyimage.com/215x160.png/5fa2dd/ffffff', 89);
insert into product_image (id, image, product_id) values (208, 'http://dummyimage.com/234x112.png/cc0000/ffffff', 85);
insert into product_image (id, image, product_id) values (209, 'http://dummyimage.com/138x212.png/dddddd/000000', 87);
insert into product_image (id, image, product_id) values (210, 'http://dummyimage.com/202x218.png/cc0000/ffffff', 38);
insert into product_image (id, image, product_id) values (211, 'http://dummyimage.com/209x101.png/cc0000/ffffff', 45);
insert into product_image (id, image, product_id) values (212, 'http://dummyimage.com/230x141.png/5fa2dd/ffffff', 70);
insert into product_image (id, image, product_id) values (213, 'http://dummyimage.com/210x191.png/5fa2dd/ffffff', 65);
insert into product_image (id, image, product_id) values (214, 'http://dummyimage.com/102x208.png/ff4444/ffffff', 75);
insert into product_image (id, image, product_id) values (215, 'http://dummyimage.com/198x209.png/dddddd/000000', 4);
insert into product_image (id, image, product_id) values (216, 'http://dummyimage.com/210x101.png/dddddd/000000', 23);
insert into product_image (id, image, product_id) values (217, 'http://dummyimage.com/241x211.png/dddddd/000000', 56);
insert into product_image (id, image, product_id) values (218, 'http://dummyimage.com/237x206.png/cc0000/ffffff', 16);
insert into product_image (id, image, product_id) values (219, 'http://dummyimage.com/128x235.png/5fa2dd/ffffff', 83);
insert into product_image (id, image, product_id) values (220, 'http://dummyimage.com/130x186.png/5fa2dd/ffffff', 84);
insert into product_image (id, image, product_id) values (221, 'http://dummyimage.com/234x212.png/cc0000/ffffff', 28);
insert into product_image (id, image, product_id) values (222, 'http://dummyimage.com/146x129.png/5fa2dd/ffffff', 60);
insert into product_image (id, image, product_id) values (223, 'http://dummyimage.com/209x152.png/ff4444/ffffff', 25);
insert into product_image (id, image, product_id) values (224, 'http://dummyimage.com/171x221.png/dddddd/000000', 93);
insert into product_image (id, image, product_id) values (225, 'http://dummyimage.com/234x201.png/5fa2dd/ffffff', 65);
insert into product_image (id, image, product_id) values (226, 'http://dummyimage.com/177x207.png/5fa2dd/ffffff', 35);
insert into product_image (id, image, product_id) values (227, 'http://dummyimage.com/106x161.png/ff4444/ffffff', 9);
insert into product_image (id, image, product_id) values (228, 'http://dummyimage.com/142x189.png/dddddd/000000', 74);
insert into product_image (id, image, product_id) values (229, 'http://dummyimage.com/136x232.png/5fa2dd/ffffff', 1);
insert into product_image (id, image, product_id) values (230, 'http://dummyimage.com/132x233.png/cc0000/ffffff', 93);
insert into product_image (id, image, product_id) values (231, 'http://dummyimage.com/184x126.png/5fa2dd/ffffff', 98);
insert into product_image (id, image, product_id) values (232, 'http://dummyimage.com/100x229.png/ff4444/ffffff', 36);
insert into product_image (id, image, product_id) values (233, 'http://dummyimage.com/182x198.png/cc0000/ffffff', 66);
insert into product_image (id, image, product_id) values (234, 'http://dummyimage.com/242x153.png/5fa2dd/ffffff', 34);
insert into product_image (id, image, product_id) values (235, 'http://dummyimage.com/185x170.png/dddddd/000000', 49);
insert into product_image (id, image, product_id) values (236, 'http://dummyimage.com/143x238.png/5fa2dd/ffffff', 81);
insert into product_image (id, image, product_id) values (237, 'http://dummyimage.com/135x104.png/5fa2dd/ffffff', 92);
insert into product_image (id, image, product_id) values (238, 'http://dummyimage.com/104x186.png/ff4444/ffffff', 39);
insert into product_image (id, image, product_id) values (239, 'http://dummyimage.com/206x201.png/5fa2dd/ffffff', 62);
insert into product_image (id, image, product_id) values (240, 'http://dummyimage.com/204x108.png/5fa2dd/ffffff', 87);
insert into product_image (id, image, product_id) values (241, 'http://dummyimage.com/247x141.png/5fa2dd/ffffff', 46);
insert into product_image (id, image, product_id) values (242, 'http://dummyimage.com/221x155.png/ff4444/ffffff', 24);
insert into product_image (id, image, product_id) values (243, 'http://dummyimage.com/207x169.png/5fa2dd/ffffff', 58);
insert into product_image (id, image, product_id) values (244, 'http://dummyimage.com/106x232.png/dddddd/000000', 91);
insert into product_image (id, image, product_id) values (245, 'http://dummyimage.com/239x109.png/ff4444/ffffff', 55);
insert into product_image (id, image, product_id) values (246, 'http://dummyimage.com/225x173.png/cc0000/ffffff', 45);
insert into product_image (id, image, product_id) values (247, 'http://dummyimage.com/130x152.png/5fa2dd/ffffff', 82);
insert into product_image (id, image, product_id) values (248, 'http://dummyimage.com/196x177.png/5fa2dd/ffffff', 79);
insert into product_image (id, image, product_id) values (249, 'http://dummyimage.com/222x144.png/cc0000/ffffff', 93);
insert into product_image (id, image, product_id) values (250, 'http://dummyimage.com/122x112.png/5fa2dd/ffffff', 70);
insert into product_image (id, image, product_id) values (251, 'http://dummyimage.com/229x215.png/dddddd/000000', 90);
insert into product_image (id, image, product_id) values (252, 'http://dummyimage.com/225x205.png/ff4444/ffffff', 9);
insert into product_image (id, image, product_id) values (253, 'http://dummyimage.com/128x196.png/cc0000/ffffff', 69);
insert into product_image (id, image, product_id) values (254, 'http://dummyimage.com/117x148.png/cc0000/ffffff', 65);
insert into product_image (id, image, product_id) values (255, 'http://dummyimage.com/124x180.png/5fa2dd/ffffff', 60);
insert into product_image (id, image, product_id) values (256, 'http://dummyimage.com/137x218.png/dddddd/000000', 81);
insert into product_image (id, image, product_id) values (257, 'http://dummyimage.com/216x229.png/5fa2dd/ffffff', 84);
insert into product_image (id, image, product_id) values (258, 'http://dummyimage.com/120x216.png/cc0000/ffffff', 9);
insert into product_image (id, image, product_id) values (259, 'http://dummyimage.com/111x102.png/dddddd/000000', 71);
insert into product_image (id, image, product_id) values (260, 'http://dummyimage.com/133x107.png/dddddd/000000', 2);
insert into product_image (id, image, product_id) values (261, 'http://dummyimage.com/133x127.png/5fa2dd/ffffff', 10);
insert into product_image (id, image, product_id) values (262, 'http://dummyimage.com/228x152.png/dddddd/000000', 51);
insert into product_image (id, image, product_id) values (263, 'http://dummyimage.com/220x186.png/5fa2dd/ffffff', 87);
insert into product_image (id, image, product_id) values (264, 'http://dummyimage.com/162x138.png/5fa2dd/ffffff', 52);
insert into product_image (id, image, product_id) values (265, 'http://dummyimage.com/146x147.png/cc0000/ffffff', 70);
insert into product_image (id, image, product_id) values (266, 'http://dummyimage.com/131x175.png/ff4444/ffffff', 15);
insert into product_image (id, image, product_id) values (267, 'http://dummyimage.com/237x137.png/ff4444/ffffff', 5);
insert into product_image (id, image, product_id) values (268, 'http://dummyimage.com/109x199.png/ff4444/ffffff', 13);
insert into product_image (id, image, product_id) values (269, 'http://dummyimage.com/135x102.png/dddddd/000000', 92);
insert into product_image (id, image, product_id) values (270, 'http://dummyimage.com/205x179.png/ff4444/ffffff', 66);
insert into product_image (id, image, product_id) values (271, 'http://dummyimage.com/106x130.png/cc0000/ffffff', 39);
insert into product_image (id, image, product_id) values (272, 'http://dummyimage.com/107x227.png/ff4444/ffffff', 86);
insert into product_image (id, image, product_id) values (273, 'http://dummyimage.com/144x134.png/cc0000/ffffff', 92);
insert into product_image (id, image, product_id) values (274, 'http://dummyimage.com/174x167.png/ff4444/ffffff', 81);
insert into product_image (id, image, product_id) values (275, 'http://dummyimage.com/176x211.png/5fa2dd/ffffff', 31);
insert into product_image (id, image, product_id) values (276, 'http://dummyimage.com/237x133.png/dddddd/000000', 73);
insert into product_image (id, image, product_id) values (277, 'http://dummyimage.com/152x170.png/5fa2dd/ffffff', 31);
insert into product_image (id, image, product_id) values (278, 'http://dummyimage.com/117x194.png/dddddd/000000', 81);
insert into product_image (id, image, product_id) values (279, 'http://dummyimage.com/115x203.png/ff4444/ffffff', 74);
insert into product_image (id, image, product_id) values (280, 'http://dummyimage.com/107x215.png/5fa2dd/ffffff', 97);
insert into product_image (id, image, product_id) values (281, 'http://dummyimage.com/165x145.png/cc0000/ffffff', 17);
insert into product_image (id, image, product_id) values (282, 'http://dummyimage.com/225x131.png/5fa2dd/ffffff', 95);
insert into product_image (id, image, product_id) values (283, 'http://dummyimage.com/111x228.png/ff4444/ffffff', 13);
insert into product_image (id, image, product_id) values (284, 'http://dummyimage.com/121x121.png/dddddd/000000', 76);
insert into product_image (id, image, product_id) values (285, 'http://dummyimage.com/238x168.png/dddddd/000000', 6);
insert into product_image (id, image, product_id) values (286, 'http://dummyimage.com/145x116.png/5fa2dd/ffffff', 8);
insert into product_image (id, image, product_id) values (287, 'http://dummyimage.com/156x154.png/cc0000/ffffff', 85);
insert into product_image (id, image, product_id) values (288, 'http://dummyimage.com/107x221.png/dddddd/000000', 72);
insert into product_image (id, image, product_id) values (289, 'http://dummyimage.com/117x217.png/5fa2dd/ffffff', 10);
insert into product_image (id, image, product_id) values (290, 'http://dummyimage.com/208x109.png/ff4444/ffffff', 75);
insert into product_image (id, image, product_id) values (291, 'http://dummyimage.com/108x190.png/dddddd/000000', 19);
insert into product_image (id, image, product_id) values (292, 'http://dummyimage.com/179x249.png/5fa2dd/ffffff', 97);
insert into product_image (id, image, product_id) values (293, 'http://dummyimage.com/123x213.png/cc0000/ffffff', 3);
insert into product_image (id, image, product_id) values (294, 'http://dummyimage.com/197x187.png/cc0000/ffffff', 54);
insert into product_image (id, image, product_id) values (295, 'http://dummyimage.com/143x153.png/dddddd/000000', 38);
insert into product_image (id, image, product_id) values (296, 'http://dummyimage.com/137x144.png/5fa2dd/ffffff', 61);
insert into product_image (id, image, product_id) values (297, 'http://dummyimage.com/170x128.png/5fa2dd/ffffff', 7);
insert into product_image (id, image, product_id) values (298, 'http://dummyimage.com/115x167.png/ff4444/ffffff', 61);
insert into product_image (id, image, product_id) values (299, 'http://dummyimage.com/246x247.png/cc0000/ffffff', 29);
insert into product_image (id, image, product_id) values (300, 'http://dummyimage.com/231x184.png/5fa2dd/ffffff', 90);
insert into product_image (id, image, product_id) values (301, 'http://dummyimage.com/187x138.png/dddddd/000000', 11);
insert into product_image (id, image, product_id) values (302, 'http://dummyimage.com/227x187.png/ff4444/ffffff', 13);
insert into product_image (id, image, product_id) values (303, 'http://dummyimage.com/215x179.png/5fa2dd/ffffff', 40);
insert into product_image (id, image, product_id) values (304, 'http://dummyimage.com/137x156.png/5fa2dd/ffffff', 91);
insert into product_image (id, image, product_id) values (305, 'http://dummyimage.com/197x173.png/5fa2dd/ffffff', 50);
insert into product_image (id, image, product_id) values (306, 'http://dummyimage.com/187x215.png/cc0000/ffffff', 51);
insert into product_image (id, image, product_id) values (307, 'http://dummyimage.com/134x133.png/ff4444/ffffff', 22);
insert into product_image (id, image, product_id) values (308, 'http://dummyimage.com/152x153.png/cc0000/ffffff', 48);
insert into product_image (id, image, product_id) values (309, 'http://dummyimage.com/168x107.png/5fa2dd/ffffff', 97);
insert into product_image (id, image, product_id) values (310, 'http://dummyimage.com/154x149.png/cc0000/ffffff', 63);
insert into product_image (id, image, product_id) values (311, 'http://dummyimage.com/228x195.png/5fa2dd/ffffff', 44);
insert into product_image (id, image, product_id) values (312, 'http://dummyimage.com/121x192.png/ff4444/ffffff', 65);
insert into product_image (id, image, product_id) values (313, 'http://dummyimage.com/233x110.png/cc0000/ffffff', 87);
insert into product_image (id, image, product_id) values (314, 'http://dummyimage.com/139x117.png/dddddd/000000', 36);
insert into product_image (id, image, product_id) values (315, 'http://dummyimage.com/167x206.png/ff4444/ffffff', 93);
insert into product_image (id, image, product_id) values (316, 'http://dummyimage.com/141x172.png/dddddd/000000', 62);
insert into product_image (id, image, product_id) values (317, 'http://dummyimage.com/201x107.png/cc0000/ffffff', 44);
insert into product_image (id, image, product_id) values (318, 'http://dummyimage.com/203x218.png/dddddd/000000', 16);
insert into product_image (id, image, product_id) values (319, 'http://dummyimage.com/132x229.png/ff4444/ffffff', 53);
insert into product_image (id, image, product_id) values (320, 'http://dummyimage.com/121x166.png/ff4444/ffffff', 70);
insert into product_image (id, image, product_id) values (321, 'http://dummyimage.com/175x221.png/5fa2dd/ffffff', 32);
insert into product_image (id, image, product_id) values (322, 'http://dummyimage.com/173x152.png/5fa2dd/ffffff', 44);
insert into product_image (id, image, product_id) values (323, 'http://dummyimage.com/198x183.png/cc0000/ffffff', 99);
insert into product_image (id, image, product_id) values (324, 'http://dummyimage.com/191x211.png/ff4444/ffffff', 6);
insert into product_image (id, image, product_id) values (325, 'http://dummyimage.com/196x164.png/cc0000/ffffff', 11);
insert into product_image (id, image, product_id) values (326, 'http://dummyimage.com/107x191.png/cc0000/ffffff', 70);
insert into product_image (id, image, product_id) values (327, 'http://dummyimage.com/139x245.png/cc0000/ffffff', 88);
insert into product_image (id, image, product_id) values (328, 'http://dummyimage.com/236x141.png/dddddd/000000', 10);
insert into product_image (id, image, product_id) values (329, 'http://dummyimage.com/146x206.png/5fa2dd/ffffff', 95);
insert into product_image (id, image, product_id) values (330, 'http://dummyimage.com/185x232.png/ff4444/ffffff', 49);
insert into product_image (id, image, product_id) values (331, 'http://dummyimage.com/221x242.png/cc0000/ffffff', 96);
insert into product_image (id, image, product_id) values (332, 'http://dummyimage.com/221x131.png/dddddd/000000', 1);
insert into product_image (id, image, product_id) values (333, 'http://dummyimage.com/217x105.png/cc0000/ffffff', 92);
insert into product_image (id, image, product_id) values (334, 'http://dummyimage.com/203x117.png/dddddd/000000', 45);
insert into product_image (id, image, product_id) values (335, 'http://dummyimage.com/248x107.png/5fa2dd/ffffff', 84);
insert into product_image (id, image, product_id) values (336, 'http://dummyimage.com/109x176.png/dddddd/000000', 93);
insert into product_image (id, image, product_id) values (337, 'http://dummyimage.com/248x121.png/cc0000/ffffff', 2);
insert into product_image (id, image, product_id) values (338, 'http://dummyimage.com/195x208.png/dddddd/000000', 72);
insert into product_image (id, image, product_id) values (339, 'http://dummyimage.com/167x247.png/dddddd/000000', 49);
insert into product_image (id, image, product_id) values (340, 'http://dummyimage.com/221x170.png/dddddd/000000', 53);
insert into product_image (id, image, product_id) values (341, 'http://dummyimage.com/154x107.png/dddddd/000000', 62);
insert into product_image (id, image, product_id) values (342, 'http://dummyimage.com/122x216.png/ff4444/ffffff', 23);
insert into product_image (id, image, product_id) values (343, 'http://dummyimage.com/120x238.png/ff4444/ffffff', 34);
insert into product_image (id, image, product_id) values (344, 'http://dummyimage.com/143x134.png/5fa2dd/ffffff', 16);
insert into product_image (id, image, product_id) values (345, 'http://dummyimage.com/124x144.png/5fa2dd/ffffff', 4);
insert into product_image (id, image, product_id) values (346, 'http://dummyimage.com/106x117.png/ff4444/ffffff', 43);
insert into product_image (id, image, product_id) values (347, 'http://dummyimage.com/105x105.png/ff4444/ffffff', 65);
insert into product_image (id, image, product_id) values (348, 'http://dummyimage.com/247x229.png/cc0000/ffffff', 34);
insert into product_image (id, image, product_id) values (349, 'http://dummyimage.com/165x229.png/dddddd/000000', 65);
insert into product_image (id, image, product_id) values (350, 'http://dummyimage.com/210x228.png/ff4444/ffffff', 24);
insert into product_image (id, image, product_id) values (351, 'http://dummyimage.com/157x178.png/cc0000/ffffff', 2);
insert into product_image (id, image, product_id) values (352, 'http://dummyimage.com/172x153.png/cc0000/ffffff', 65);
insert into product_image (id, image, product_id) values (353, 'http://dummyimage.com/230x179.png/5fa2dd/ffffff', 19);
insert into product_image (id, image, product_id) values (354, 'http://dummyimage.com/210x195.png/dddddd/000000', 67);
insert into product_image (id, image, product_id) values (355, 'http://dummyimage.com/176x149.png/dddddd/000000', 54);
insert into product_image (id, image, product_id) values (356, 'http://dummyimage.com/234x145.png/ff4444/ffffff', 30);
insert into product_image (id, image, product_id) values (357, 'http://dummyimage.com/188x202.png/cc0000/ffffff', 56);
insert into product_image (id, image, product_id) values (358, 'http://dummyimage.com/126x180.png/dddddd/000000', 91);
insert into product_image (id, image, product_id) values (359, 'http://dummyimage.com/144x163.png/ff4444/ffffff', 70);
insert into product_image (id, image, product_id) values (360, 'http://dummyimage.com/127x190.png/dddddd/000000', 25);
insert into product_image (id, image, product_id) values (361, 'http://dummyimage.com/130x134.png/cc0000/ffffff', 99);
insert into product_image (id, image, product_id) values (362, 'http://dummyimage.com/122x237.png/5fa2dd/ffffff', 84);
insert into product_image (id, image, product_id) values (363, 'http://dummyimage.com/112x129.png/5fa2dd/ffffff', 36);
insert into product_image (id, image, product_id) values (364, 'http://dummyimage.com/214x134.png/ff4444/ffffff', 5);
insert into product_image (id, image, product_id) values (365, 'http://dummyimage.com/214x153.png/5fa2dd/ffffff', 20);
insert into product_image (id, image, product_id) values (366, 'http://dummyimage.com/134x241.png/ff4444/ffffff', 65);
insert into product_image (id, image, product_id) values (367, 'http://dummyimage.com/172x154.png/ff4444/ffffff', 15);
insert into product_image (id, image, product_id) values (368, 'http://dummyimage.com/148x103.png/5fa2dd/ffffff', 39);
insert into product_image (id, image, product_id) values (369, 'http://dummyimage.com/236x130.png/cc0000/ffffff', 56);
insert into product_image (id, image, product_id) values (370, 'http://dummyimage.com/201x207.png/dddddd/000000', 64);
insert into product_image (id, image, product_id) values (371, 'http://dummyimage.com/173x216.png/cc0000/ffffff', 7);
insert into product_image (id, image, product_id) values (372, 'http://dummyimage.com/185x186.png/cc0000/ffffff', 52);
insert into product_image (id, image, product_id) values (373, 'http://dummyimage.com/177x105.png/dddddd/000000', 76);
insert into product_image (id, image, product_id) values (374, 'http://dummyimage.com/195x126.png/5fa2dd/ffffff', 97);
insert into product_image (id, image, product_id) values (375, 'http://dummyimage.com/167x135.png/cc0000/ffffff', 100);
insert into product_image (id, image, product_id) values (376, 'http://dummyimage.com/183x112.png/dddddd/000000', 38);
insert into product_image (id, image, product_id) values (377, 'http://dummyimage.com/230x149.png/5fa2dd/ffffff', 23);
insert into product_image (id, image, product_id) values (378, 'http://dummyimage.com/209x227.png/cc0000/ffffff', 81);
insert into product_image (id, image, product_id) values (379, 'http://dummyimage.com/242x200.png/5fa2dd/ffffff', 60);
insert into product_image (id, image, product_id) values (380, 'http://dummyimage.com/202x230.png/5fa2dd/ffffff', 59);
insert into product_image (id, image, product_id) values (381, 'http://dummyimage.com/171x130.png/5fa2dd/ffffff', 65);
insert into product_image (id, image, product_id) values (382, 'http://dummyimage.com/231x231.png/ff4444/ffffff', 95);
insert into product_image (id, image, product_id) values (383, 'http://dummyimage.com/174x109.png/5fa2dd/ffffff', 26);
insert into product_image (id, image, product_id) values (384, 'http://dummyimage.com/225x111.png/5fa2dd/ffffff', 63);
insert into product_image (id, image, product_id) values (385, 'http://dummyimage.com/186x204.png/ff4444/ffffff', 22);
insert into product_image (id, image, product_id) values (386, 'http://dummyimage.com/195x227.png/cc0000/ffffff', 17);
insert into product_image (id, image, product_id) values (387, 'http://dummyimage.com/214x235.png/5fa2dd/ffffff', 51);
insert into product_image (id, image, product_id) values (388, 'http://dummyimage.com/233x239.png/dddddd/000000', 11);
insert into product_image (id, image, product_id) values (389, 'http://dummyimage.com/193x204.png/cc0000/ffffff', 18);
insert into product_image (id, image, product_id) values (390, 'http://dummyimage.com/130x209.png/cc0000/ffffff', 30);
insert into product_image (id, image, product_id) values (391, 'http://dummyimage.com/222x214.png/dddddd/000000', 69);
insert into product_image (id, image, product_id) values (392, 'http://dummyimage.com/246x149.png/ff4444/ffffff', 92);
insert into product_image (id, image, product_id) values (393, 'http://dummyimage.com/197x119.png/cc0000/ffffff', 27);
insert into product_image (id, image, product_id) values (394, 'http://dummyimage.com/198x124.png/5fa2dd/ffffff', 9);
insert into product_image (id, image, product_id) values (395, 'http://dummyimage.com/208x153.png/cc0000/ffffff', 95);
insert into product_image (id, image, product_id) values (396, 'http://dummyimage.com/214x217.png/cc0000/ffffff', 22);
insert into product_image (id, image, product_id) values (397, 'http://dummyimage.com/241x192.png/5fa2dd/ffffff', 56);
insert into product_image (id, image, product_id) values (398, 'http://dummyimage.com/127x192.png/dddddd/000000', 87);
insert into product_image (id, image, product_id) values (399, 'http://dummyimage.com/110x201.png/5fa2dd/ffffff', 11);
insert into product_image (id, image, product_id) values (400, 'http://dummyimage.com/196x161.png/cc0000/ffffff', 78)


-- end product image