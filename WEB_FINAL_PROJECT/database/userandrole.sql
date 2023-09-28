use webfinalproject
CREATE TABLE role (
  id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  code VARCHAR(255) NOT NULL
);
CREATE TABLE user (
  id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(150) NOT NULL,
  password VARCHAR(150) NOT NULL,
  fullname VARCHAR(150) NULL,
  status INT NOT NULL,
  roleid BIGINT NOT NULL,
  sdt VARCHAR(150) NOT NULL
)
ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES role(id);