-- beaker table
CREATE TABLE beaker (
  id SERIAL PRIMARY KEY,
  volume_ml INTEGER NOT NULL,
  manufacturer VARCHAR(255),
  date_acquired DATE,
  is_sterile BOOLEAN DEFAULT TRUE
);
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (500, 'BeakerCo', '2022-01-10', TRUE);
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (1000, 'LabTech', '2023-02-15', FALSE);
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (250, 'ScienceStuff', '2021-12-20', TRUE);