-- beaker table
CREATE TABLE beaker (
  -- id
  id SERIAL PRIMARY KEY,

  -- all main types
  volume_ml INTEGER,
  rating DECIMAL,
  manufacturer VARCHAR(255),
  date_acquired DATE,
  time_acquired TIME,
  timestamp_acquired TIMESTAMP,
  is_sterile BOOLEAN,

  -- trying some nulls
  make_me_null1 INTEGER,
  make_me_null2 BOOLEAN,
  make_me_null3 TIMESTAMP,

  -- type variants
  a_smallint SMALLINT,
  a_bigint BIGINT,
  a_char CHAR(50),
  a_numeric NUMERIC,
  a_float FLOAT,
  a_real REAL
);
