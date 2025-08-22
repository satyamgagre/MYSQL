-- Create the table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some data (notice we don't specify 'user_id')
INSERT INTO users (username, email) VALUES
('john_doe', 'john.doe@email.com'),
('jane_smith', 'jane.smith@email.com'),
('test_user', 'test@email.com');

-- View the results
SELECT * FROM users;