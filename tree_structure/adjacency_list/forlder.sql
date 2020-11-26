CREATE TABLE IF NOT EXISTS `adjacency_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20),
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;