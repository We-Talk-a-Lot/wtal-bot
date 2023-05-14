CREATE TABLE IF NOT EXISTS `QOTD` (
    `id` int NOT NULL,
    `question` VARCHAR(200) NOT NULL
    PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `QOTData` (
    `kind` CHAR(5) NOT NULL,
    `value` VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `QOTData` 
VALUES('latest', '$current_time') 
ON DUPLICATE KEY IGNORE;

INSERT INTO `QOTData` 
VALUES('index', '0') 
ON DUPLICATE KEY IGNORE;
