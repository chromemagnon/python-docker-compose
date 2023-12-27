
CREATE DATABASE IF NOT EXISTS iotdb;
USE iotdb;

CREATE TABLE IF NOT EXISTS iot_device (
    id INT AUTO_INCREMENT PRIMARY KEY,
    device_identifier VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS iot_measurement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    device_id INT NOT NULL,
    value FLOAT NOT NULL,
    created_date DATETIME NOT NULL,
    FOREIGN KEY (device_id) REFERENCES iot_device(id),
    INDEX idx_device_id_created_date (device_id,created_date)
);

INSERT INTO iot_device(device_identifier) VALUES ('de0d880d-c5eb-4d9a-96ca-4542167dcc0b');
INSERT INTO iot_device(device_identifier) VALUES ('2c41cebe-9303-4110-9be5-417cb278bcb9');
INSERT INTO iot_device(device_identifier) VALUES ('7867384e-51c8-46be-83d8-3deda10937a8');
