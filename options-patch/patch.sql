ALTER TABLE products
ADD products_length DECIMAL(6,2) DEFAULT '0' NOT NULL,
ADD products_width DECIMAL(6,2) DEFAULT '0' NOT NULL,
ADD products_height DECIMAL(6,2) DEFAULT '0' NOT NULL,
ADD `products_instant` ENUM( 'y', 'n' ) DEFAULT 'n';
ALTER TABLE `sessions` CHANGE `value` `value` LONGTEXT NOT NULL 