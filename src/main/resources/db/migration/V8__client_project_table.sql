ALTER TABLE project
ADD clientId int NOT NULL;

ALTER TABLE project
ADD FOREIGN KEY (clientId) REFERENCES client(id);