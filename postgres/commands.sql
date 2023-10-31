-- testing place
INSERT INTO beaker (volume_ml, manufacturer, date_acquired, is_sterile)
VALUES (250, 'LabTech', '2021-12-21', FALSE);

UPDATE beaker SET manufacturer = 'LabGrow' WHERE volume_ml < 300;
UPDATE beaker SET manufacturer = 'ShrinkSource' WHERE is_sterile = FALSE;

SELECT * FROM beaker;
SELECT * FROM beaker WHERE volume_ml = 250;
SELECT * FROM beaker WHERE volume_ml = 300;