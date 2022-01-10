DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE users (
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(25) NOT NULL DEFAULT 'nenhum nome inserido',
  user_age INT NOT NULL DEFAULT 0,
  plan_id INT NOT NULL,
  subscription_date DATE NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine=InnoDB;