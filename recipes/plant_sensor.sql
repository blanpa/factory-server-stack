CREATE TABLE IF NOT EXISTS plant_sensor_data_complete (
time TIMESTAMPTZ,
moisture_value FLOAT,
temp_value FLOAT,
motion_value FLOAT
);

CREATE TABLE IF NOT EXISTS plant_sensor_moisture_value (
    time TIMESTAMPTZ,
    moisture_value FLOAT
);

CREATE TABLE IF NOT EXISTS plant_sensor_temp_value (
    time TIMESTAMPTZ,
    temp_value FLOAT
);

CREATE TABLE IF NOT EXISTS plant_sensor_motion_value (
    time TIMESTAMPTZ,
    motion_value FLOAT
);