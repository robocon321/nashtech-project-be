CREATE TABLE `user` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`username` VARCHAR(100) NOT NULL UNIQUE,
	`password` VARCHAR(100) NOT NULL,
	`fullname` VARCHAR(100) NOT NULL,
	`phone` VARCHAR(20) NOT NULL UNIQUE,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`avatar` VARCHAR(2048),
	`birthday` DATETIME,
	`sex` BOOLEAN,
	`status` BIT NOT NULL,
	`create_time` DATETIME NOT NULL,
	`mod_time` DATETIME NOT NULL
);


CREATE TABLE `contact` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`fullname` VARCHAR(200) NOT NULL,
	`phone` VARCHAR(20) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`province` VARCHAR(40) NOT NULL,
	`district` VARCHAR(40) NOT NULL,
	`ward` VARCHAR(40) NOT NULL,
	`detail` VARCHAR(255) NOT NULL,
	`user_id` INT NOT NULL,
	`create_time` DATETIME NOT NULL,
	`mod_time` DATETIME NOT NULL
);


CREATE TABLE role (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(20) NOT NULL,
	`description` TEXT
);

CREATE TABLE `user_role` (
	`user_id` INT NOT NULL,
	`role_id` INT NOT NULL
);


CREATE TABLE `category` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL UNIQUE,
	`image` VARCHAR(2048),
	`description` TEXT,
	`parent_id` INT,
	`slug` VARCHAR(100) NOT NULL,
	`meta_title` VARCHAR(100),
	`meta_keyword` VARCHAR(300),
	`meta_description` VARCHAR(500),
	`status` BIT NOT NULL,
	`create_time` DATETIME NOT NULL,
	`mod_time` DATETIME NOT NULL
);


CREATE TABLE `product` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`thumbnail` VARCHAR(2048) NOT NULL,
	`real_price` DOUBLE NOT NULL,
	`sell_price` DOUBLE NOT NULL,
	`short_description` VARCHAR(512) NOT NULL,
	`full_description` TEXT NOT NULL,
	`stock` INT NOT NULL,
	`width` DOUBLE NOT NULL,
	`length` DOUBLE NOT NULL,
	`height` DOUBLE NOT NULL,
	`weight` DOUBLE NOT NULL,
	`slug` VARCHAR(100) NOT NULL,
	`meta_title` VARCHAR(100),
	`meta_keyword` VARCHAR(300),
	`meta_description` VARCHAR(500),
	`status` BIT NOT NULL,
	`create_time` DATETIME NOT NULL,
	`mod_time` DATETIME NOT NULL
) ;


CREATE TABLE `category_product` (
	`product_id` INT NOT NULL,
	`category_id` INT NOT NULL
);


CREATE TABLE `product_image` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`product_id` INT NOT NULL,
	`image` VARCHAR(2048) NOT NULL
);


CREATE TABLE `rating` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`product_id` INT NOT NULL,
	`user_id` INT NOT NULL,
	`star` BIT NOT NULL,
	`content` VARCHAR(1024) NOT NULL,
	`create_time` DATETIME NOT NULL
);


CREATE TABLE `cart` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT NOT NULL,
	`status` BIT NOT NULL,
	`create_time` DATETIME NOT NULL,
	`mod_time` DATETIME NOT NULL
);


CREATE TABLE `cart_item` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`product_id` INT NOT NULL,
	`cart_id` INT NOT NULL,
	`quantity` INT NOT NULL
);


CREATE TABLE `transaction` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`cart_id` INT NOT NULL,
	`shipping_id` INT NOT NULL,
	`product_price` INT NOT NULL,
	`ship_price` INT NOT NULL,
	`status` BIT NOT NULL,
	`create_time` DATETIME NOT NULL
);


CREATE TABLE `shipping` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`fullname` VARCHAR(200) NOT NULL,
	`phone` VARCHAR(20) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`province` VARCHAR(40) NOT NULL,
	`district` VARCHAR(40) NOT NULL,
	`ward` VARCHAR(40) NOT NULL,
	`detail` VARCHAR(255) NOT NULL
);

CREATE TABLE `setting` (
	`id` INT NOT NULL,
	`key` VARCHAR(100) NOT NULL UNIQUE,
	`value` VARCHAR(1000) NOT NULL
);


ALTER TABLE `contact`
ADD FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) 
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `user_role`
ADD FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `user_role`
ADD FOREIGN KEY (`role_id`) REFERENCES `role`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `category`
ADD FOREIGN KEY (`parent_id`) REFERENCES `category`(`id`)
ON DELETE SET NULL
ON UPDATE SET NULL;

ALTER TABLE `category_product`
ADD FOREIGN KEY (`product_id`) REFERENCES `product`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `category_product`
ADD FOREIGN KEY (`category_id`) REFERENCES `category`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `product_image`
ADD FOREIGN KEY (`product_id`) REFERENCES `product`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `rating`
ADD FOREIGN KEY (`product_id`) REFERENCES `product`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `rating`
ADD FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
ON DELETE SET NULL
ON UPDATE SET NULL;

ALTER TABLE `cart`
ADD FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `cart_item`
ADD FOREIGN KEY (`product_id`) REFERENCES `product`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `cart_item`
ADD FOREIGN KEY (`cart_id`) REFERENCES `cart`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `order`
ADD FOREIGN KEY (`cart_id`) REFERENCES `cart`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;

ALTER TABLE `order`
ADD FOREIGN KEY (`shipping_id`) REFERENCES `shipping`(`id`)
ON DELETE CASCADE
ON UPDATE SET NULL;