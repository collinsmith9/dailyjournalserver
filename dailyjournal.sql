
CREATE TABLE `Moods` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`label`	TEXT NOT NULL
);


CREATE TABLE `Entries` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`concept`	TEXT NOT NULL,
	`entry`	TEXT NOT NULL,
    `mood_id` INTEGER NOT NULL,
    `date` TEXT NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES `Moods`(`id`)
);


INSERT INTO `Moods` VALUES (null, 'Happy');
INSERT INTO `Moods` VALUES (null, 'Sad');
INSERT INTO `Moods` VALUES (null, 'Angry');
INSERT INTO `Moods` VALUES (null, 'Ok');

INSERT INTO `Entries` VALUES (null, "Python", "this is a test", 1, "today");
INSERT INTO `Entries` VALUES (null, "Back-end Dev", "this stuff is pretty cool", 1, "always");