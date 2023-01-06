CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  names text,
  time int,
  rating int
);
INSERT INTO recipes(id,names,time,rating) VALUES ('1','pizza','45','5');
INSERT INTO recipes(id,names,time,rating) VALUES ('2','mousaka','60','5');
INSERT INTO recipes(id,names,time,rating) VALUES ('3','pasta','20','4');
INSERT INTO recipes(id,names,time,rating) VALUES ('4','greek salad','15','5');
INSERT INTO recipes(id,names,time,rating) VALUES ('5','onion soup','30','2');
INSERT INTO recipes(id,names,time,rating) VALUES ('6','roasted chicken','65','4');