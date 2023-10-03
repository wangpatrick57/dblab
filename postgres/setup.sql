CREATE TABLE beaker (
  id SERIAL PRIMARY KEY,
  volume_ml INTEGER NOT NULL,
  manufacturer VARCHAR(255),
  date_acquired DATE,
  is_sterile BOOLEAN DEFAULT TRUE
);