DROP USER 'rouser'@'%';
DROP USER 'rouser'@'localhost';
create user 'rouser'@'%' identified by password "*ED74B096D082D584998BEAE6C03A3A092D460A7B";
create user 'rouser'@'localhost' identified by password "*ED74B096D082D584998BEAE6C03A3A092D460A7B";
GRANT SELECT ON `host1328091`.* TO 'rouser'@'%';

show grants;