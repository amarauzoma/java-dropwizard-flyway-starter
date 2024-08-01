CREATE TABLE LegacyEmployeeProject (
                                       id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
                                       projectID int NOT NULL,
                                       deliveryEmpID int NOT NULL,

                                       FOREIGN KEY (projectID) REFERENCES project(id),
                                       FOREIGN KEY (deliveryEmpID) REFERENCES delivery_employee(id)
);

DELIMITER //
create trigger Trigger1 after delete on deliveryEmployeeProject FOR  EACH  ROW
BEGIN

    INSERT INTO LegacyEmployeeProject (projectID,deliveryEmpID)
    VALUES(OLD.projectID,OLD.deliveryEmpID);

END//

DELIMITER ;