CREATE TABLE todo2 (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  details VARCHAR(500) NULL,
  priority integer NOT NULL DEFAULT 2,
  created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
  completed_at TIMESTAMP NULL
);
insert into todo2 (title, priority, completed_at) values ('clean',2,'2017-08-29 15:31:50.180922'),('walk',2,'2017-08-29 13:30:50.180922'),('blah',4,'2017-08-29 13:09:50.180922'),('no',5,'2017-08-29 14:31:50.180922'),('po',5,'2017-08-29 16:31:50.180922');
insert into todo2 (title, priority, created_at) values ('mo',1,'2017-07-29 13:31:50.180922'),('jo',2,'2017-07-29 12:31:50.180922'),('lo',3,'2017-07-29 11:31:50.180922'),('so',4,'2017-07-29 10:31:50.180922'),('yo',5,'2017-07-29 9:31:50.180922');
insert into todo2 (title, details, created_at,completed_at) values ('bo','blah blah','2017-07-29 13:31:50.180922','2017-07-29 14:02:50.180922'),('eo','blah blah blah','2017-07-29 12:31:50.180922','2017-07-29 12:50:50.180922'),('ko','nah blah blah','2017-07-29 11:01:50.180922','2017-07-29 12:22:50.180922'),('qo','no bo lo blah','2017-07-29 16:31:50.180922','2017-07-29 18:02:50.180922');
insert into todo2 (title, priority, details, created_at) values ('ho',1,'no jo bo','2017-07-29 13:40:50.180922'),('ro',3,'hey ho','2017-07-29 12:01:50.180922'),('uo',3,'no no no','2017-07-29 11:19:50.180922'),('xo',4,'ha ha ha','2017-07-29 10:00:50.180922'),('zo',5,'blah lbah blah blah','2017-07-29 9:59:50.180922');

SELECT id,title,priority from todo2 WHERE priority = 3 and completed_at is null;
SELECT title, completed_at, priority from todo2 WHERE completed_at is null Order by priority;
SELECT id,title,priority from todo2 WHERE created_at > (current_date - 30) order by priority;
SELECT id,title,details,priority from todo2 WHERE priority = 1 and completed_at is null order by created_at limit 1;
