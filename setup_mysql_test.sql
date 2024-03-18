-- Check for the existence of the database and create it if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Check for the existence of the user and create it if it doesn't exist
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Grant SELECT privilege on the performance_schema database to the user
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- Apply the privilege changes
FLUSH PRIVILEGES;
