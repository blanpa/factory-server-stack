CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_complete (
    time TIMESTAMPTZ,
    relay TEXT,
    power FLOAT,
    energy FLOAT,
    overtemperature FLOAT,
    temperature FLOAT
);

CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_state_relay (
    time TIMESTAMPTZ,
    relay TEXT
);

CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_state_power (
    time TIMESTAMPTZ,
    power FLOAT
);

CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_state_energy (
    time TIMESTAMPTZ,
    energy FLOAT
);

CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_state_overtemperature (
    time TIMESTAMPTZ,
    overtemperature FLOAT
);

CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_state_temperature (
    time TIMESTAMPTZ,
    temperature FLOAT
);

CREATE TABLE IF NOT EXISTS shellyplug_s_5A6C13_state_command (
    time TIMESTAMPTZ,
    command TEXT
);