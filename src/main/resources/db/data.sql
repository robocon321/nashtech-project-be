insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (1, 'fdowyer0', '6MW4uaemvPl', 'Farlay Dowyer', '6503251993', 'fdowyer0@independent.co.uk', 'https://robohash.org/autemcumquevel.png?size=50x50&set=set1', '2001/12/29', true, 1, '2020/01/25', '2021/09/05');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (2, 'cmaccaghan1', 'IbY885', 'Corrie MacCaghan', '1222408201', 'cmaccaghan1@prnewswire.com', 'https://robohash.org/rerumautvelit.png?size=50x50&set=set1', '2001/05/22', false, 0, '2020/01/18', '2021/05/01');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (3, 'lbrussels2', 'BNVnNHvlAg8', 'Lorettalorna Brussels', '6309368530', 'lbrussels2@barnesandnoble.com', 'https://robohash.org/delectusquisquammolestias.png?size=50x50&set=set1', '2003/07/15', true, 1, '2020/04/24', '2021/06/22');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (4, 'lminigo3', 'zY4JvT8y', 'Lev Minigo', '8043168512', 'lminigo3@upenn.edu', 'https://robohash.org/quiaplaceatcupiditate.png?size=50x50&set=set1', '2004/11/27', true, 0, '2019/11/19', '2021/01/08');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (5, 'zopy4', 'lhR4tR', 'Zebulon Opy', '1775843544', 'zopy4@boston.com', 'https://robohash.org/debitismollitiadeleniti.png?size=50x50&set=set1', '2004/11/14', true, 0, '2020/06/18', '2021/08/02');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (6, 'tberriball5', 'XciiYhh', 'Terry Berriball', '5173184575', 'tberriball5@hc360.com', 'https://robohash.org/adquideleniti.png?size=50x50&set=set1', '2005/05/10', true, 1, '2019/12/07', '2021/07/30');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (7, 'vaddey6', '86nuRWEvGFE3', 'Verine Addey', '1485406445', 'vaddey6@pinterest.com', 'https://robohash.org/voluptateaquia.png?size=50x50&set=set1', '2002/11/19', false, 1, '2020/04/30', '2021/02/18');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (8, 'mbreede7', '0PbrpGx', 'Mindy Breede', '1678838215', 'mbreede7@plala.or.jp', 'https://robohash.org/dolorumundeplaceat.png?size=50x50&set=set1', '2003/11/20', false, 0, '2020/08/11', '2021/08/29');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (9, 'daksell8', 'gZEjNK7S', 'Dolores Aksell', '5924358453', 'daksell8@scientificamerican.com', 'https://robohash.org/cupiditatevelitratione.png?size=50x50&set=set1', '2003/05/19', true, 1, '2020/02/21', '2021/09/22');
insert into user (id, username, password, fullname, phone, email, avatar, birthday, sex, status, create_time, mod_time) values (10, 'rwoodham9', 'SQbRWHvlMtXc', 'Roz Woodham', '2494226594', 'rwoodham9@purevolume.com', 'https://robohash.org/minimalaboriosamsoluta.png?size=50x50&set=set1', '2005/04/12', false, 1, '2020/04/25', '2021/08/14');


-- end user



-- start role (2)

insert into role (id, name) values(1, "ADMIN");
insert into role (id, name) values(2, "CLIENT");

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
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (7, 'Doors, Frames & Software', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'category-7', 'in libero ut massa volutpat', 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '2020/11/06', '2022/03/20');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (8, 'Fire Protection', 'http://dummyimage.com/218x100.png/cc0000/ffffff', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'category-8', 'leo rhoncus sed vestibulum sit', 'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '2021/07/13', '2022/05/14');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (9, 'Marlite Panels (FED)', 'http://dummyimage.com/132x100.png/cc0000/ffffff', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'category-9', 'nulla neque libero convallis eget', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, '2021/05/21', '2021/10/27');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (10, 'Roofing (Metal)', 'http://dummyimage.com/229x100.png/cc0000/ffffff', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'category-10', 'donec quis orci eget orci vehicula condimentum curabitur', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 0, '2021/01/30', '2022/06/17');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (11, 'Drilled Shafts', 'http://dummyimage.com/124x100.png/cc0000/ffffff', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'category-11', 'duis bibendum felis sed interdum', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2021/09/17', '2022/06/17');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (12, 'Masonry & Precast', 'http://dummyimage.com/199x100.png/ff4444/ffffff', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'category-12', 'ligula sit amet eleifend pede libero quis', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, '2020/11/06', '2022/01/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (13, 'Fire Software', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'category-13', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 0, '2021/04/04', '2022/03/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (14, 'Roofing (Asphalt)', 'http://dummyimage.com/226x100.png/ff4444/ffffff', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'category-14', 'eros suspendisse accumsan tortor quis turpis sed ante vivamus', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '2021/04/27', '2022/10/15');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (15, 'Drilled Carton', 'http://dummyimage.com/147x100.png/dddddd/000000', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'category-15', 'ut dolor morbi vel lectus in quam fringilla', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 0, '2020/11/18', '2022/07/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (16, 'Construction Clean and Final Clean', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'category-16', 'ipsum aliquam non mauris morbi non', 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 1, '2020/10/30', '2022/01/12');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (17, 'Scale & Hangup', 'http://dummyimage.com/206x100.png/ff4444/ffffff', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'category-17', 'vulputate ut ultrices vel augue vestibulum', 'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1, '2020/12/14', '2022/06/24');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (18, 'Wall House', 'http://dummyimage.com/215x100.png/cc0000/ffffff', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'category-18', 'dapibus nulla suscipit ligula in lacus curabitur', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1, '2021/01/21', '2022/03/05');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (19, 'Landscaping & Irrigation', 'http://dummyimage.com/178x100.png/ff4444/ffffff', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'category-19', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '2020/10/20', '2022/09/11');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (20, 'HVAC', 'http://dummyimage.com/195x100.png/dddddd/000000', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'category-20', 'natoque penatibus et magnis dis parturient montes nascetur', 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 1, '2021/10/15', '2022/10/09');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (21, 'Poline Cancel (FED)', 'http://dummyimage.com/230x100.png/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'category-21', 'metus sapien ut nunc vestibulum', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 0, '2021/08/04', '2022/01/20');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (22, 'Drywall Phics', 'http://dummyimage.com/136x100.png/dddddd/000000', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'category-22', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 0, '2021/08/10', '2022/08/26');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (23, 'Roofing (Alphta)', 'http://dummyimage.com/116x100.png/ff4444/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'category-23', 'condimentum curabitur in libero ut massa volutpat', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 0, '2021/02/26', '2022/04/15');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (24, 'Structural and Misc Steel (Fabrication)', 'http://dummyimage.com/152x100.png/ff4444/ffffff', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'category-24', 'metus aenean fermentum donec ut mauris eget massa tempor convallis', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 1, '2021/06/14', '2021/10/25');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (25, 'Epoxy Flooring', 'http://dummyimage.com/242x100.png/5fa2dd/ffffff', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'category-25', 'lobortis est phasellus sit amet erat nulla', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 0, '2021/05/15', '2022/02/27');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (26, 'Framing (Steel)', 'http://dummyimage.com/175x100.png/cc0000/ffffff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'category-26', 'a pede posuere nonummy integer non velit donec', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 0, '2021/01/07', '2022/08/13');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (27, 'Elevator', 'http://dummyimage.com/223x100.png/5fa2dd/ffffff', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'category-27', 'nonummy maecenas tincidunt lacus at velit', 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, '2021/08/28', '2022/05/27');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (28, 'Structural and Disck Siz (Fabrication)', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'category-28', 'in lectus pellentesque at nulla suspendisse potenti cras in', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 0, '2021/10/06', '2022/08/20');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (29, 'Fire Hardware', 'http://dummyimage.com/108x100.png/5fa2dd/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'category-29', 'proin interdum mauris non ligula pellentesque', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1, '2020/11/25', '2021/12/07');
insert into category (id, name, image, description, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (30, 'Asphalt Paving', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'category-30', 'mattis nibh ligula nec sem duis aliquam', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2021/01/19', '2022/05/04');



-- end category






-- start product (100)


insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (1, 'Godiva White Chocolate', 'http://dummyimage.com/214x247.png/dddddd/000000', 9235253, 6187619, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 27, 34, 26, 127, 45, 'product-1', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, '2020/03/15', '2022/01/16');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (2, 'Blue Curacao - Marie Brizard', 'http://dummyimage.com/198x100.png/cc0000/ffffff', 1475237, 1224446, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 32, 36, 39, 250, 45, 'product-2', 'eleifend donec ut dolor morbi vel lectus', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 0, '2020/10/14', '2022/05/10');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (3, 'Plastic Wrap', 'http://dummyimage.com/169x202.png/cc0000/ffffff', 5079204, 4215739, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 54, 12, 30, 439, 35, 'product-3', 'in quis justo maecenas rhoncus', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2020/02/11', '2021/11/29');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (4, 'Juice - Lemon', 'http://dummyimage.com/116x192.png/5fa2dd/ffffff', 2574015, 1621629, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 37, 38, 43, 109, 21, 'product-4', 'congue elementum in hac habitasse platea dictumst morbi', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, '2020/05/27', '2022/05/02');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (5, 'Wine - Chablis J Moreau Et Fils', 'http://dummyimage.com/103x232.png/ff4444/ffffff', 3036698, 2338257, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 28, 36, 30, 174, 23, 'product-5', 'augue a suscipit nulla elit ac nulla sed', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1, '2020/05/17', '2022/10/07');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (6, 'Wine - Vidal Icewine Magnotta', 'http://dummyimage.com/160x164.png/ff4444/ffffff', 7900997, 6557827, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 13, 20, 25, 13, 23, 'product-6', 'sapien urna pretium nisl ut volutpat sapien', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 0, '2020/08/16', '2022/01/02');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (7, 'Chicken - Thigh, Bone In', 'http://dummyimage.com/161x232.png/ff4444/ffffff', 2579795, 2347613, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 39, 34, 27, 155, 29, 'product-7', 'non mauris morbi non lectus aliquam', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 0, '2020/06/24', '2022/10/25');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (8, 'Olives - Green, Pitted', 'http://dummyimage.com/151x167.png/5fa2dd/ffffff', 5816198, 2966260, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 9, 25, 47, 333, 38, 'product-8', 'justo aliquam quis turpis eget', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2019/12/31', '2022/01/04');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (9, 'Beer - Maudite', 'http://dummyimage.com/235x177.png/5fa2dd/ffffff', 1913256, 1396676, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 53, 31, 27, 178, 34, 'product-9', 'aenean auctor gravida sem praesent id', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 0, '2020/03/02', '2022/03/07');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (10, 'Wine - Winzer Krems Gruner', 'http://dummyimage.com/170x205.png/5fa2dd/ffffff', 9467874, 8994480, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 87, 30, 30, 297, 10, 'product-10', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 1, '2020/10/01', '2022/05/19');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (11, 'Bagel - 12 Grain Preslice', 'http://dummyimage.com/157x221.png/dddddd/000000', 4429400, 3144874, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 90, 11, 36, 491, 31, 'product-11', 'morbi odio odio elementum eu interdum', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 1, '2020/09/26', '2022/08/19');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (12, 'Juice - Prune', 'http://dummyimage.com/132x220.png/dddddd/000000', 5244348, 4352808, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 20, 47, 15, 110, 13, 'product-12', 'tempus vivamus in felis eu sapien cursus vestibulum', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '2020/02/22', '2021/12/18');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (13, 'Rice - Wild', 'http://dummyimage.com/114x232.png/cc0000/ffffff', 9476059, 6159438, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 80, 45, 17, 159, 42, 'product-13', 'nec euismod scelerisque quam turpis adipiscing lorem', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, '2020/01/06', '2021/12/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (14, 'Vodka - Moskovskaya', 'http://dummyimage.com/154x154.png/dddddd/000000', 7550570, 6946524, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 41, 47, 11, 471, 43, 'product-14', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1, '2020/02/08', '2022/06/07');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (15, 'Scallops 60/80 Iqf', 'http://dummyimage.com/121x226.png/dddddd/000000', 6467726, 4009990, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 53, 42, 45, 38, 43, 'product-15', 'congue etiam justo etiam pretium iaculis justo in', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, '2020/01/09', '2022/07/25');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (16, 'Tart Shells - Sweet, 2', 'http://dummyimage.com/219x114.png/5fa2dd/ffffff', 6337349, 4436144, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 26, 46, 27, 23, 18, 'product-16', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '2020/01/07', '2022/03/19');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (17, 'Soup - Campbells Chili', 'http://dummyimage.com/151x112.png/dddddd/000000', 4800189, 3024119, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 30, 14, 46, 468, 14, 'product-17', 'consectetuer adipiscing elit proin interdum mauris', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 0, '2020/02/26', '2022/02/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (18, 'Cheese - Parmesan Cubes', 'http://dummyimage.com/107x124.png/cc0000/ffffff', 7447157, 4840652, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 64, 46, 32, 154, 21, 'product-18', 'laoreet ut rhoncus aliquet pulvinar sed', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '2020/09/17', '2022/09/13');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (19, 'Appetizer - Cheese Bites', 'http://dummyimage.com/200x220.png/cc0000/ffffff', 1684378, 1296971, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 97, 23, 14, 474, 41, 'product-19', 'lorem integer tincidunt ante vel ipsum praesent blandit', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 1, '2020/01/01', '2022/05/14');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (20, 'Cheese - Cheddarsliced', 'http://dummyimage.com/227x199.png/ff4444/ffffff', 5943762, 4279508, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 47, 36, 22, 66, 34, 'product-20', 'metus aenean fermentum donec ut mauris eget massa', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 0, '2020/05/14', '2022/10/28');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (21, 'Grapes - Green', 'http://dummyimage.com/236x175.png/5fa2dd/ffffff', 1997522, 1378290, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 4, 25, 31, 261, 11, 'product-21', 'eu est congue elementum in hac habitasse platea dictumst', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 0, '2019/12/23', '2022/06/30');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (22, 'Soup - Campbells Mushroom', 'http://dummyimage.com/171x168.png/5fa2dd/ffffff', 8825992, 8208172, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 32, 21, 39, 199, 20, 'product-22', 'habitasse platea dictumst aliquam augue quam sollicitudin', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 0, '2020/05/30', '2022/07/12');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (23, 'Absolut Citron', 'http://dummyimage.com/118x186.png/ff4444/ffffff', 4209212, 3788290, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 67, 48, 41, 428, 45, 'product-23', 'in congue etiam justo etiam pretium', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, '2020/02/04', '2021/12/13');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (24, 'Dr. Pepper - 355ml', 'http://dummyimage.com/229x153.png/dddddd/000000', 700306, 651284, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 98, 44, 41, 63, 20, 'product-24', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 0, '2020/03/15', '2022/03/09');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (25, 'Wine - Chianti Classico Riserva', 'http://dummyimage.com/235x182.png/cc0000/ffffff', 1724124, 1137921, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 39, 27, 50, 264, 26, 'product-25', 'quisque ut erat curabitur gravida nisi at nibh', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1, '2020/05/20', '2022/10/30');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (26, 'Tea - Green', 'http://dummyimage.com/240x174.png/ff4444/ffffff', 6567270, 4662761, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 90, 45, 45, 184, 18, 'product-26', 'eget rutrum at lorem integer', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '2020/07/30', '2022/09/12');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (27, 'Bay Leaf Fresh', 'http://dummyimage.com/190x241.png/ff4444/ffffff', 74080, 53337, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 69, 35, 46, 74, 12, 'product-27', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, '2020/04/15', '2021/12/07');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (28, 'Coconut - Shredded, Sweet', 'http://dummyimage.com/139x178.png/cc0000/ffffff', 508326, 391411, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 72, 49, 10, 282, 25, 'product-28', 'mattis pulvinar nulla pede ullamcorper', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, '2020/05/17', '2022/04/22');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (29, 'Cake Slab', 'http://dummyimage.com/116x193.png/ff4444/ffffff', 9627210, 8664489, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 18, 36, 45, 264, 12, 'product-29', 'vestibulum ante ipsum primis in faucibus', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1, '2020/10/20', '2022/07/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (30, 'Ice Cream - Strawberry', 'http://dummyimage.com/244x200.png/cc0000/ffffff', 8700118, 8265112, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 7, 16, 13, 242, 28, 'product-30', 'cubilia curae nulla dapibus dolor vel est donec odio justo', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, '2020/04/07', '2022/09/17');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (31, 'Bagel - Plain', 'http://dummyimage.com/164x128.png/dddddd/000000', 1772555, 1630750, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 17, 14, 44, 352, 21, 'product-31', 'nunc proin at turpis a', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 0, '2020/09/07', '2021/11/09');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (32, 'Bread - White, Unsliced', 'http://dummyimage.com/173x167.png/5fa2dd/ffffff', 1420421, 795435, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 29, 20, 13, 263, 34, 'product-32', 'sagittis sapien cum sociis natoque', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '2020/01/11', '2021/12/19');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (33, 'Sprouts - Corn', 'http://dummyimage.com/104x236.png/dddddd/000000', 8863502, 6558991, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 67, 32, 19, 262, 17, 'product-33', 'in hac habitasse platea dictumst morbi vestibulum velit id', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 0, '2020/03/08', '2022/01/01');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (34, 'Chestnuts - Whole,canned', 'http://dummyimage.com/112x186.png/cc0000/ffffff', 7042672, 5704564, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 34, 30, 42, 152, 42, 'product-34', 'pulvinar nulla pede ullamcorper augue a', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 0, '2020/01/11', '2021/12/10');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (35, 'Oil - Macadamia', 'http://dummyimage.com/228x195.png/5fa2dd/ffffff', 1615653, 1244052, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 60, 21, 45, 49, 49, 'product-35', 'praesent id massa id nisl venenatis lacinia', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 0, '2020/08/08', '2022/06/10');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (36, 'Scallop - St. Jaques', 'http://dummyimage.com/247x199.png/5fa2dd/ffffff', 9652586, 8783853, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 65, 17, 10, 366, 21, 'product-36', 'phasellus id sapien in sapien iaculis congue vivamus', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 0, '2020/10/10', '2022/09/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (37, 'Pastry - French Mini Assorted', 'http://dummyimage.com/141x240.png/dddddd/000000', 843171, 834739, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 71, 30, 33, 62, 20, 'product-37', 'convallis duis consequat dui nec nisi volutpat eleifend', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 0, '2020/05/25', '2022/06/02');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (38, 'Mushroom - Oyster, Fresh', 'http://dummyimage.com/209x136.png/5fa2dd/ffffff', 3143102, 2640205, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 75, 20, 11, 306, 35, 'product-38', 'orci mauris lacinia sapien quis libero nullam sit amet turpis', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 0, '2020/05/20', '2022/04/10');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (39, 'Chickensplit Half', 'http://dummyimage.com/245x215.png/ff4444/ffffff', 6851889, 4933360, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 57, 25, 18, 387, 13, 'product-39', 'massa id nisl venenatis lacinia', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, '2020/04/10', '2022/01/17');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (40, 'Wine - Sogrape Mateus Rose', 'http://dummyimage.com/122x249.png/cc0000/ffffff', 5390903, 3180632, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 21, 43, 39, 416, 14, 'product-40', 'nisi venenatis tristique fusce congue diam id ornare', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 1, '2020/03/27', '2022/06/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (41, 'Pork - Chop, Frenched', 'http://dummyimage.com/191x195.png/dddddd/000000', 4510714, 2255357, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 9, 11, 15, 391, 28, 'product-41', 'morbi vel lectus in quam fringilla rhoncus mauris enim', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1, '2019/11/15', '2022/02/12');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (42, 'Wine - Wyndham Estate Bin 777', 'http://dummyimage.com/204x121.png/5fa2dd/ffffff', 3967632, 2221873, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5, 40, 41, 355, 36, 'product-42', 'varius ut blandit non interdum in ante vestibulum ante', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '2020/05/10', '2022/02/04');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (43, 'Cabbage - Nappa', 'http://dummyimage.com/128x132.png/cc0000/ffffff', 3316283, 2984654, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 28, 21, 15, 303, 11, 'product-43', 'est et tempus semper est quam pharetra magna ac consequat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 0, '2020/06/13', '2022/03/20');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (44, 'Myers Planters Punch', 'http://dummyimage.com/232x118.png/5fa2dd/ffffff', 2497683, 1498609, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 38, 43, 48, 105, 48, 'product-44', 'suspendisse potenti in eleifend quam', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 1, '2020/04/04', '2022/10/30');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (45, 'Spinach - Packaged', 'http://dummyimage.com/134x150.png/5fa2dd/ffffff', 9200161, 5152090, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 7, 49, 17, 324, 48, 'product-45', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 0, '2020/06/29', '2022/04/08');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (46, 'Snapple Lemon Tea', 'http://dummyimage.com/139x175.png/dddddd/000000', 8546530, 5127918, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 6, 37, 46, 138, 48, 'product-46', 'ac neque duis bibendum morbi non quam', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 0, '2019/11/14', '2022/04/08');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (47, 'Beer - Heinekin', 'http://dummyimage.com/146x126.png/cc0000/ffffff', 1648865, 1071762, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 81, 41, 28, 15, 50, 'product-47', 'nam nulla integer pede justo lacinia eget tincidunt', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, '2020/08/20', '2022/04/20');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (48, 'Lambcasing', 'http://dummyimage.com/232x153.png/5fa2dd/ffffff', 5721660, 5263927, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 65, 46, 16, 476, 36, 'product-48', 'mi sit amet lobortis sapien sapien non', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, '2020/10/25', '2022/01/22');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (49, 'Compound - Orange', 'http://dummyimage.com/131x119.png/cc0000/ffffff', 2664503, 1545411, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 54, 39, 33, 322, 43, 'product-49', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 1, '2020/08/18', '2022/07/25');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (50, 'Lemon Tarts', 'http://dummyimage.com/138x135.png/cc0000/ffffff', 9318104, 6802215, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 62, 23, 16, 180, 17, 'product-50', 'molestie sed justo pellentesque viverra pede', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1, '2020/05/25', '2021/11/04');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (51, 'Herb Du Provence - Primerba', 'http://dummyimage.com/187x231.png/5fa2dd/ffffff', 6816098, 6134488, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 18, 10, 24, 469, 19, 'product-51', 'nulla elit ac nulla sed vel enim sit', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1, '2020/03/24', '2021/12/23');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (52, 'Quail - Whole, Boneless', 'http://dummyimage.com/161x240.png/dddddd/000000', 3817442, 3206651, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 51, 33, 48, 173, 24, 'product-52', 'nullam sit amet turpis elementum ligula vehicula', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 0, '2020/01/06', '2022/05/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (53, 'Gatorade - Xfactor Berry', 'http://dummyimage.com/195x129.png/cc0000/ffffff', 8267643, 7688907, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 17, 21, 49, 482, 47, 'product-53', 'tellus nulla ut erat id mauris vulputate', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 1, '2020/03/12', '2022/02/06');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (54, 'Coffee Swiss Choc Almond', 'http://dummyimage.com/191x181.png/ff4444/ffffff', 4900057, 2450028, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 36, 49, 39, 29, 49, 'product-54', 'et ultrices posuere cubilia curae donec pharetra magna', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1, '2020/04/16', '2022/06/08');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (55, 'Pie Filling - Cherry', 'http://dummyimage.com/226x204.png/dddddd/000000', 3838071, 3339121, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 100, 20, 22, 314, 25, 'product-55', 'dapibus duis at velit eu est congue elementum in', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1, '2019/12/04', '2022/02/11');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (56, 'Tea - Black Currant', 'http://dummyimage.com/215x241.png/cc0000/ffffff', 2282024, 2259203, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 72, 36, 26, 218, 47, 'product-56', 'sed justo pellentesque viverra pede', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1, '2020/09/21', '2022/02/17');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (57, 'Pepper - Orange', 'http://dummyimage.com/233x138.png/ff4444/ffffff', 8412621, 6477718, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 44, 21, 20, 80, 38, 'product-57', 'suspendisse potenti in eleifend quam a odio', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 0, '2020/03/18', '2022/03/06');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (58, 'Eggplant - Asian', 'http://dummyimage.com/137x154.png/5fa2dd/ffffff', 1677953, 1644393, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 43, 45, 27, 219, 33, 'product-58', 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1, '2020/09/03', '2022/01/01');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (59, 'Trout - Rainbow, Frozen', 'http://dummyimage.com/133x244.png/dddddd/000000', 8296133, 7964287, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 93, 21, 25, 459, 36, 'product-59', 'nisl duis bibendum felis sed interdum', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1, '2020/05/22', '2022/07/07');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (60, 'Otomegusa Dashi Konbu', 'http://dummyimage.com/236x196.png/dddddd/000000', 3576045, 2896596, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 5, 41, 45, 92, 27, 'product-60', 'donec vitae nisi nam ultrices', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 0, '2020/01/30', '2022/10/27');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (61, 'Cookie Dough - Double', 'http://dummyimage.com/179x222.png/5fa2dd/ffffff', 8444461, 7600014, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 14, 12, 36, 214, 46, 'product-61', 'elit ac nulla sed vel enim', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1, '2020/01/10', '2022/07/05');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (62, 'Baking Soda', 'http://dummyimage.com/219x173.png/5fa2dd/ffffff', 8651226, 4931198, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 66, 19, 14, 434, 13, 'product-62', 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1, '2020/07/09', '2022/07/11');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (63, 'Soup - Chicken And Wild Rice', 'http://dummyimage.com/154x152.png/cc0000/ffffff', 5439316, 5058563, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 33, 39, 41, 75, 38, 'product-63', 'erat fermentum justo nec condimentum', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 0, '2020/07/18', '2022/06/07');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (64, 'Melon - Honey Dew', 'http://dummyimage.com/228x235.png/ff4444/ffffff', 6984540, 4819332, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 62, 21, 17, 272, 23, 'product-64', 'praesent blandit nam nulla integer pede', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 0, '2020/07/04', '2021/11/09');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (65, 'Scotch - Queen Anne', 'http://dummyimage.com/158x126.png/cc0000/ffffff', 513526, 390279, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 19, 47, 34, 274, 20, 'product-65', 'ultrices posuere cubilia curae donec pharetra magna vestibulum', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1, '2020/05/12', '2022/06/21');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (66, 'Wine - Sake', 'http://dummyimage.com/218x228.png/cc0000/ffffff', 5015390, 4814774, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 36, 11, 46, 326, 35, 'product-66', 'integer a nibh in quis justo maecenas rhoncus aliquam', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 0, '2020/05/05', '2021/11/30');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (67, 'Rice - 7 Grain Blend', 'http://dummyimage.com/222x117.png/dddddd/000000', 7664104, 7127616, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 90, 49, 47, 349, 23, 'product-67', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 0, '2020/06/12', '2021/11/26');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (68, 'Butter - Unsalted', 'http://dummyimage.com/173x193.png/cc0000/ffffff', 7305952, 6721475, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 27, 39, 19, 329, 47, 'product-68', 'ornare consequat lectus in est', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 0, '2020/03/14', '2022/08/25');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (69, 'Kellogs Raisan Bran Bars', 'http://dummyimage.com/204x223.png/dddddd/000000', 7679942, 4761564, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 46, 48, 16, 192, 24, 'product-69', 'eros suspendisse accumsan tortor quis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2019/11/05', '2022/07/31');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (70, 'Cabbage - Savoy', 'http://dummyimage.com/229x139.png/dddddd/000000', 4828439, 4297310, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 80, 22, 26, 167, 10, 'product-70', 'nec molestie sed justo pellentesque viverra pede ac diam', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1, '2020/04/14', '2022/08/19');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (71, 'Cake - French Pear Tart', 'http://dummyimage.com/248x107.png/cc0000/ffffff', 2724974, 2316227, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 56, 23, 20, 491, 38, 'product-71', 'sem sed sagittis nam congue risus', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, '2020/08/31', '2022/03/08');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (72, 'Potatoes - Peeled', 'http://dummyimage.com/241x156.png/dddddd/000000', 4373984, 3411707, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 85, 23, 18, 414, 17, 'product-72', 'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1, '2019/11/05', '2022/08/17');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (73, 'Salmon - Atlantic, Fresh, Whole', 'http://dummyimage.com/231x178.png/cc0000/ffffff', 7378008, 4279244, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 76, 12, 24, 413, 45, 'product-73', 'posuere nonummy integer non velit donec diam neque vestibulum eget', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1, '2020/10/24', '2022/07/21');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (74, 'Fork - Plastic', 'http://dummyimage.com/131x161.png/ff4444/ffffff', 4758730, 4425618, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 83, 35, 38, 302, 15, 'product-74', 'penatibus et magnis dis parturient montes', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '2019/12/31', '2022/05/22');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (75, 'Cheese - Cheddar, Medium', 'http://dummyimage.com/180x187.png/5fa2dd/ffffff', 8891435, 8891435, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 90, 29, 37, 305, 19, 'product-75', 'lectus in est risus auctor sed tristique in tempus sit', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 0, '2020/02/01', '2022/05/27');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (76, 'Mints - Striped Red', 'http://dummyimage.com/124x128.png/5fa2dd/ffffff', 8578290, 7034197, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 61, 36, 23, 226, 48, 'product-76', 'dis parturient montes nascetur ridiculus mus etiam vel augue', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1, '2020/01/26', '2022/04/14');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (77, 'Carbonated Water - Raspberry', 'http://dummyimage.com/149x211.png/ff4444/ffffff', 4350508, 3610921, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 38, 12, 44, 313, 36, 'product-77', 'pretium nisl ut volutpat sapien', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, '2020/01/12', '2022/03/11');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (78, 'Muffin Mix - Corn Harvest', 'http://dummyimage.com/214x167.png/ff4444/ffffff', 4533937, 2448325, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 95, 16, 19, 493, 36, 'product-78', 'luctus cum sociis natoque penatibus et magnis dis parturient montes', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, '2020/10/17', '2022/05/16');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (79, 'Lettuce - Green Leaf', 'http://dummyimage.com/188x228.png/cc0000/ffffff', 445154, 280447, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 25, 28, 35, 111, 47, 'product-79', 'vel ipsum praesent blandit lacinia erat vestibulum sed', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 0, '2020/02/13', '2022/02/15');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (80, 'Mushroom - King Eryingii', 'http://dummyimage.com/168x115.png/5fa2dd/ffffff', 2817258, 2648222, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 92, 49, 39, 345, 22, 'product-80', 'ut at dolor quis odio consequat', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 0, '2020/04/20', '2021/11/26');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (81, 'Wine - White, Lindemans Bin 95', 'http://dummyimage.com/235x126.png/cc0000/ffffff', 97133, 75763, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 98, 25, 19, 59, 31, 'product-81', 'semper sapien a libero nam dui proin leo', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 0, '2020/01/17', '2022/02/23');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (82, 'Sesame Seed', 'http://dummyimage.com/160x218.png/cc0000/ffffff', 6335103, 3801061, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 95, 25, 24, 116, 12, 'product-82', 'rhoncus aliquam lacus morbi quis tortor', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 0, '2020/07/13', '2021/12/01');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (83, 'Lettuce - Escarole', 'http://dummyimage.com/131x156.png/cc0000/ffffff', 3312927, 1755851, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 7, 38, 26, 351, 13, 'product-83', 'mauris eget massa tempor convallis nulla neque libero', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, '2019/12/23', '2022/10/18');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (84, 'Tomatoes', 'http://dummyimage.com/236x230.png/ff4444/ffffff', 8203529, 5004152, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 77, 17, 23, 422, 20, 'product-84', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, '2020/04/03', '2022/01/20');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (85, 'Bread Sour Rolls', 'http://dummyimage.com/198x125.png/ff4444/ffffff', 4186073, 3013972, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 88, 29, 45, 487, 16, 'product-85', 'cubilia curae nulla dapibus dolor vel', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1, '2020/04/18', '2022/04/15');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (86, 'Pears - Bosc', 'http://dummyimage.com/132x178.png/5fa2dd/ffffff', 2128707, 1468807, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 83, 36, 16, 475, 47, 'product-86', 'quis turpis eget elit sodales', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 0, '2020/02/06', '2021/11/08');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (87, 'Silicone Parch. 16.3x24.3', 'http://dummyimage.com/148x136.png/5fa2dd/ffffff', 5959007, 3098683, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 84, 21, 10, 365, 35, 'product-87', 'tristique fusce congue diam id ornare', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1, '2020/01/05', '2021/11/24');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (88, 'Cheese - Cheddar, Medium', 'http://dummyimage.com/140x205.png/dddddd/000000', 1735686, 1718329, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 7, 50, 30, 145, 25, 'product-88', 'amet eleifend pede libero quis orci nullam molestie', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '2020/01/13', '2022/10/06');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (89, 'Sauce - Rosee', 'http://dummyimage.com/247x218.png/dddddd/000000', 6419078, 6162314, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 39, 46, 34, 451, 22, 'product-89', 'ipsum primis in faucibus orci luctus et ultrices posuere', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2020/06/17', '2022/01/15');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (90, 'Bread - Corn Muffaletta', 'http://dummyimage.com/125x112.png/ff4444/ffffff', 1555860, 1026867, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 34, 37, 27, 288, 39, 'product-90', 'ipsum primis in faucibus orci luctus et ultrices', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 0, '2019/12/08', '2022/03/29');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (91, 'Oranges - Navel, 72', 'http://dummyimage.com/214x224.png/cc0000/ffffff', 1746676, 1641875, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 42, 43, 35, 176, 43, 'product-91', 'dictumst morbi vestibulum velit id', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, '2020/02/21', '2022/02/25');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (92, 'Tendrils - Baby Pea, Organic', 'http://dummyimage.com/220x128.png/cc0000/ffffff', 6123835, 3306870, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 78, 12, 11, 437, 22, 'product-92', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, '2020/09/02', '2022/02/25');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (93, 'Ginger - Ground', 'http://dummyimage.com/156x145.png/5fa2dd/ffffff', 8621311, 5690065, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 47, 36, 43, 104, 35, 'product-93', 'proin risus praesent lectus vestibulum quam sapien', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, '2020/05/21', '2022/08/02');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (94, 'Oven Mitts - 15 Inch', 'http://dummyimage.com/222x111.png/cc0000/ffffff', 40471, 36828, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 92, 36, 27, 494, 39, 'product-94', 'eu interdum eu tincidunt in leo maecenas pulvinar', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1, '2020/06/06', '2022/03/30');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (95, 'Sea Bass - Fillets', 'http://dummyimage.com/229x123.png/ff4444/ffffff', 482303, 294204, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 43, 11, 23, 86, 33, 'product-95', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 0, '2020/05/31', '2022/04/12');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (96, 'Maple Syrup', 'http://dummyimage.com/117x226.png/dddddd/000000', 3735969, 3511810, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 99, 43, 21, 381, 14, 'product-96', 'nulla nunc purus phasellus in felis donec semper sapien', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2020/08/16', '2022/07/23');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (97, 'Anisette - Mcguiness', 'http://dummyimage.com/236x146.png/dddddd/000000', 4353256, 4135593, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 70, 39, 27, 280, 10, 'product-97', 'ut tellus nulla ut erat id mauris vulputate elementum nullam', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1, '2020/08/20', '2022/07/04');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (98, 'Beef - Ground Lean Fresh', 'http://dummyimage.com/103x205.png/cc0000/ffffff', 904180, 777594, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 35, 17, 38, 477, 11, 'product-98', 'posuere cubilia curae nulla dapibus dolor vel', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '2020/06/02', '2022/03/11');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (99, 'Wine - Spumante Bambino White', 'http://dummyimage.com/108x137.png/5fa2dd/ffffff', 6103685, 5249169, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 29, 49, 22, 128, 28, 'product-99', 'mus etiam vel augue vestibulum rutrum', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 0, '2020/06/08', '2022/10/13');
insert into product (id, name, thumbnail, real_price, sell_price, description, full_description, stock, width, length, weight, height, slug, meta_title, meta_keyword, meta_description, status, create_time, mod_time) values (100, 'Longos - Grilled Veg Sandwiches', 'http://dummyimage.com/207x202.png/5fa2dd/ffffff', 5537432, 5149811, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 96, 39, 39, 301, 45, 'product-100', 'posuere metus vitae ipsum aliquam', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, '2020/03/11', '2022/06/19');




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


insert into rating (id, product_id, user_id, star, content, create_time) values (1, 64, 9, 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/10/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (2, 6, 2, 3, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2022/04/30');
insert into rating (id, product_id, user_id, star, content, create_time) values (3, 27, 2, 5, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2021/12/02');
insert into rating (id, product_id, user_id, star, content, create_time) values (4, 89, 8, 2, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/02/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (5, 63, 1, 4, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2021/12/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (6, 94, 3, 1, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022/02/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (7, 41, 4, 1, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022/03/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (8, 54, 7, 1, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022/10/30');
insert into rating (id, product_id, user_id, star, content, create_time) values (9, 40, 1, 3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2022/09/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (10, 94, 9, 3, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/08/27');
insert into rating (id, product_id, user_id, star, content, create_time) values (11, 94, 9, 2, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022/10/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (12, 44, 8, 3, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/07/14');
insert into rating (id, product_id, user_id, star, content, create_time) values (13, 99, 8, 5, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/07/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (14, 99, 2, 4, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2022/05/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (15, 98, 2, 3, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/08/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (16, 2, 8, 3, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2022/06/04');
insert into rating (id, product_id, user_id, star, content, create_time) values (17, 81, 4, 1, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/04/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (18, 31, 10, 5, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/10/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (19, 10, 9, 5, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/07/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (20, 88, 7, 4, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022/03/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (21, 96, 4, 3, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022/08/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (22, 22, 1, 2, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/07/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (23, 12, 9, 2, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2021/11/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (24, 28, 2, 2, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/03/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (25, 96, 8, 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/05/06');
insert into rating (id, product_id, user_id, star, content, create_time) values (26, 66, 10, 5, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/04/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (27, 100, 1, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/02/22');
insert into rating (id, product_id, user_id, star, content, create_time) values (28, 89, 6, 4, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2022/05/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (29, 26, 7, 2, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2022/05/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (30, 71, 10, 4, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022/05/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (31, 15, 3, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/11/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (32, 37, 4, 5, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/03/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (33, 75, 1, 3, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2022/01/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (34, 32, 3, 1, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022/04/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (35, 25, 9, 5, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022/01/06');
insert into rating (id, product_id, user_id, star, content, create_time) values (36, 100, 3, 4, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/10/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (37, 77, 10, 4, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2021/11/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (38, 56, 1, 4, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/03/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (39, 10, 9, 1, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2022/06/06');
insert into rating (id, product_id, user_id, star, content, create_time) values (40, 54, 2, 3, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/07/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (41, 43, 7, 5, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2022/01/14');
insert into rating (id, product_id, user_id, star, content, create_time) values (42, 87, 4, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/02/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (43, 40, 10, 1, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2021/11/29');
insert into rating (id, product_id, user_id, star, content, create_time) values (44, 67, 1, 3, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2022/08/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (45, 45, 5, 5, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/05/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (46, 14, 5, 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/02/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (47, 38, 8, 3, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/10/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (48, 80, 7, 3, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021/12/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (49, 95, 8, 5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2022/02/13');
insert into rating (id, product_id, user_id, star, content, create_time) values (50, 73, 8, 4, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/10/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (51, 73, 10, 2, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/01/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (52, 89, 3, 2, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/01/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (53, 12, 10, 1, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022/01/02');
insert into rating (id, product_id, user_id, star, content, create_time) values (54, 65, 3, 5, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2022/07/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (55, 67, 7, 4, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022/09/13');
insert into rating (id, product_id, user_id, star, content, create_time) values (56, 59, 5, 2, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2021/12/13');
insert into rating (id, product_id, user_id, star, content, create_time) values (57, 31, 10, 3, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2022/06/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (58, 41, 4, 5, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2021/11/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (59, 96, 3, 3, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2021/11/27');
insert into rating (id, product_id, user_id, star, content, create_time) values (60, 89, 9, 3, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2022/08/22');
insert into rating (id, product_id, user_id, star, content, create_time) values (61, 71, 7, 3, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022/01/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (62, 24, 8, 4, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022/08/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (63, 38, 4, 3, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2021/11/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (64, 70, 4, 2, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2022/03/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (65, 61, 2, 3, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2022/06/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (66, 82, 5, 5, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/01/04');
insert into rating (id, product_id, user_id, star, content, create_time) values (67, 13, 2, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/06/22');
insert into rating (id, product_id, user_id, star, content, create_time) values (68, 62, 7, 1, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/07/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (69, 100, 7, 4, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/10/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (70, 61, 2, 4, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/01/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (71, 34, 1, 1, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/07/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (72, 16, 2, 5, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/01/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (73, 29, 3, 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/07/02');
insert into rating (id, product_id, user_id, star, content, create_time) values (74, 34, 10, 4, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/04/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (75, 79, 2, 5, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/03/26');
insert into rating (id, product_id, user_id, star, content, create_time) values (76, 18, 6, 1, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/05/07');
insert into rating (id, product_id, user_id, star, content, create_time) values (77, 91, 8, 5, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/09/26');
insert into rating (id, product_id, user_id, star, content, create_time) values (78, 96, 1, 4, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2022/01/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (79, 49, 1, 3, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2022/04/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (80, 100, 6, 3, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2021/12/03');
insert into rating (id, product_id, user_id, star, content, create_time) values (81, 42, 2, 1, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/03/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (82, 1, 7, 4, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/11/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (83, 63, 3, 2, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022/09/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (84, 4, 10, 3, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022/07/31');
insert into rating (id, product_id, user_id, star, content, create_time) values (85, 95, 8, 1, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/05/02');
insert into rating (id, product_id, user_id, star, content, create_time) values (86, 95, 1, 2, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/09/13');
insert into rating (id, product_id, user_id, star, content, create_time) values (87, 84, 7, 1, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2022/04/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (88, 88, 3, 1, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2021/12/31');
insert into rating (id, product_id, user_id, star, content, create_time) values (89, 72, 2, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/11/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (90, 85, 6, 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/01/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (91, 98, 6, 5, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022/03/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (92, 10, 4, 2, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/03/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (93, 43, 3, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/03/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (94, 9, 4, 4, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2022/01/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (95, 15, 1, 1, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/10/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (96, 55, 7, 3, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2022/07/02');
insert into rating (id, product_id, user_id, star, content, create_time) values (97, 5, 6, 3, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/10/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (98, 35, 1, 2, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/09/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (99, 50, 8, 1, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2021/12/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (100, 59, 2, 2, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/07/06');
insert into rating (id, product_id, user_id, star, content, create_time) values (101, 94, 3, 4, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/06/04');
insert into rating (id, product_id, user_id, star, content, create_time) values (102, 36, 3, 3, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022/06/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (103, 2, 2, 4, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022/04/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (104, 96, 3, 4, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/09/03');
insert into rating (id, product_id, user_id, star, content, create_time) values (105, 83, 9, 5, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/08/04');
insert into rating (id, product_id, user_id, star, content, create_time) values (106, 100, 8, 2, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/06/07');
insert into rating (id, product_id, user_id, star, content, create_time) values (107, 82, 1, 3, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/03/02');
insert into rating (id, product_id, user_id, star, content, create_time) values (108, 12, 6, 2, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2021/11/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (109, 27, 1, 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/01/04');
insert into rating (id, product_id, user_id, star, content, create_time) values (110, 27, 7, 3, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2022/07/04');
insert into rating (id, product_id, user_id, star, content, create_time) values (111, 67, 10, 2, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2021/11/27');
insert into rating (id, product_id, user_id, star, content, create_time) values (112, 17, 2, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2022/08/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (113, 69, 2, 4, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2021/11/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (114, 37, 4, 1, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/06/24');
insert into rating (id, product_id, user_id, star, content, create_time) values (115, 18, 10, 2, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022/02/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (116, 98, 7, 5, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/02/27');
insert into rating (id, product_id, user_id, star, content, create_time) values (117, 26, 10, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2022/03/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (118, 49, 3, 5, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2022/10/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (119, 31, 9, 4, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022/05/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (120, 33, 2, 2, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2022/03/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (121, 15, 10, 5, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2022/10/24');
insert into rating (id, product_id, user_id, star, content, create_time) values (122, 81, 8, 1, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/03/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (123, 81, 2, 1, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2021/11/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (124, 13, 4, 2, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/03/29');
insert into rating (id, product_id, user_id, star, content, create_time) values (125, 12, 6, 4, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/02/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (126, 64, 4, 3, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2022/02/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (127, 53, 1, 4, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2022/02/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (128, 91, 4, 3, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/07/07');
insert into rating (id, product_id, user_id, star, content, create_time) values (129, 34, 3, 1, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/12/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (130, 56, 8, 2, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/09/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (131, 93, 7, 4, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/06/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (132, 4, 9, 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2022/04/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (133, 52, 1, 5, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/12/27');
insert into rating (id, product_id, user_id, star, content, create_time) values (134, 27, 1, 2, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/01/27');
insert into rating (id, product_id, user_id, star, content, create_time) values (135, 4, 8, 2, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2022/09/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (136, 84, 8, 4, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/09/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (137, 36, 7, 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2021/11/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (138, 43, 4, 4, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022/08/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (139, 66, 7, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2021/11/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (140, 4, 5, 4, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/10/22');
insert into rating (id, product_id, user_id, star, content, create_time) values (141, 48, 1, 2, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022/07/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (142, 62, 8, 4, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/02/23');
insert into rating (id, product_id, user_id, star, content, create_time) values (143, 80, 6, 1, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2022/04/03');
insert into rating (id, product_id, user_id, star, content, create_time) values (144, 44, 2, 2, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2021/12/03');
insert into rating (id, product_id, user_id, star, content, create_time) values (145, 3, 8, 4, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2022/10/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (146, 28, 3, 3, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/07/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (147, 27, 4, 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/01/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (148, 79, 2, 3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2022/10/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (149, 16, 1, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2021/12/29');
insert into rating (id, product_id, user_id, star, content, create_time) values (150, 58, 1, 4, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/10/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (151, 56, 8, 4, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2021/12/30');
insert into rating (id, product_id, user_id, star, content, create_time) values (152, 76, 2, 3, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2021/11/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (153, 32, 8, 1, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022/03/14');
insert into rating (id, product_id, user_id, star, content, create_time) values (154, 87, 3, 3, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2022/09/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (155, 8, 1, 4, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2022/06/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (156, 31, 8, 1, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/01/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (157, 1, 4, 4, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2021/12/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (158, 66, 10, 5, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022/10/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (159, 5, 9, 5, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2021/11/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (160, 36, 9, 1, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2021/12/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (161, 1, 4, 4, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2022/02/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (162, 9, 1, 3, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/08/07');
insert into rating (id, product_id, user_id, star, content, create_time) values (163, 21, 7, 4, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2021/12/03');
insert into rating (id, product_id, user_id, star, content, create_time) values (164, 32, 3, 2, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/03/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (165, 59, 4, 1, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2022/05/18');
insert into rating (id, product_id, user_id, star, content, create_time) values (166, 5, 7, 1, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022/02/07');
insert into rating (id, product_id, user_id, star, content, create_time) values (167, 91, 2, 2, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022/03/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (168, 88, 4, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2022/04/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (169, 93, 5, 2, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2021/12/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (170, 69, 4, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021/12/28');
insert into rating (id, product_id, user_id, star, content, create_time) values (171, 96, 4, 4, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022/01/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (172, 98, 10, 3, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/05/19');
insert into rating (id, product_id, user_id, star, content, create_time) values (173, 60, 8, 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2021/12/21');
insert into rating (id, product_id, user_id, star, content, create_time) values (174, 8, 2, 2, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2022/04/25');
insert into rating (id, product_id, user_id, star, content, create_time) values (175, 76, 7, 1, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2021/11/03');
insert into rating (id, product_id, user_id, star, content, create_time) values (176, 37, 3, 1, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2022/06/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (177, 66, 3, 5, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022/08/22');
insert into rating (id, product_id, user_id, star, content, create_time) values (178, 34, 6, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022/03/26');
insert into rating (id, product_id, user_id, star, content, create_time) values (179, 69, 5, 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2021/11/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (180, 29, 5, 2, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2021/12/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (181, 89, 4, 4, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2021/11/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (182, 97, 8, 2, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2022/10/11');
insert into rating (id, product_id, user_id, star, content, create_time) values (183, 71, 10, 1, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/07/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (184, 16, 5, 5, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2022/07/26');
insert into rating (id, product_id, user_id, star, content, create_time) values (185, 15, 10, 1, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022/06/20');
insert into rating (id, product_id, user_id, star, content, create_time) values (186, 30, 9, 3, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022/01/17');
insert into rating (id, product_id, user_id, star, content, create_time) values (187, 4, 8, 3, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/07/01');
insert into rating (id, product_id, user_id, star, content, create_time) values (188, 29, 10, 1, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2021/11/05');
insert into rating (id, product_id, user_id, star, content, create_time) values (189, 53, 4, 3, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2021/11/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (190, 51, 6, 2, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2022/07/26');
insert into rating (id, product_id, user_id, star, content, create_time) values (191, 51, 7, 3, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022/04/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (192, 7, 1, 2, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2022/03/09');
insert into rating (id, product_id, user_id, star, content, create_time) values (193, 97, 10, 1, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/08/10');
insert into rating (id, product_id, user_id, star, content, create_time) values (194, 23, 3, 3, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2022/04/15');
insert into rating (id, product_id, user_id, star, content, create_time) values (195, 5, 2, 1, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2022/08/31');
insert into rating (id, product_id, user_id, star, content, create_time) values (196, 75, 5, 1, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2022/06/16');
insert into rating (id, product_id, user_id, star, content, create_time) values (197, 4, 9, 5, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2022/03/29');
insert into rating (id, product_id, user_id, star, content, create_time) values (198, 78, 9, 2, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022/05/12');
insert into rating (id, product_id, user_id, star, content, create_time) values (199, 5, 9, 5, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2022/09/08');
insert into rating (id, product_id, user_id, star, content, create_time) values (200, 91, 10, 2, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2022/04/14');



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