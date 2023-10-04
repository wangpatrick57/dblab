-- insert 3 beakers
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (500, 'BeakerCo', '2022-01-10', TRUE);
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (1000, 'LabTech', '2023-02-15', FALSE);
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (250, 'ScienceStuff', '2021-12-20', TRUE);

-- testing place
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES ('hi', 55, '2021-12-21', FALSE);
SELECT * FROM beaker;