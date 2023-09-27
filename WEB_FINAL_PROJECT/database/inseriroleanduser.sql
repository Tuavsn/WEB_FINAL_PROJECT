
insert into role(code,name) values('ADMIN','ADMIN');
insert into role(code,name) values('USER','USER');

INSERT INTO user (username, password, fullname, status, roleid,sdt) VALUES ('admin', MD5('123456'), 'admin', 1, 1,0367386108);
insert into user(username,password,fullname,status, roleid,sdt) values('nguyenvana',MD5('123456'),'Nguyễn Văn a',1,2,1234123);
insert into user(username,password,fullname,status, roleid,sdt) values('nguyenvanb',MD5('123456'),'Nguyễn Văn ba',1,2,1234123);