USE startersql;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE,
    street VARCHAR(250),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(6),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
(1, '123 MG Road', 'Pune', 'Maharashtra', '411001'),
(2, '45 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, '78 Nehru Nagar', 'Chennai', 'Tamil Nadu', '600042'),
(4, '12 Civil Lines', 'Delhi', 'Delhi', '110054'),
(5, '90 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(6, '56 Gandhi Chowk', 'Nagpur', 'Maharashtra', '440001'),
(7, '34 Connaught Place', 'Delhi', 'Delhi', '110001'),
(8, '89 Ashram Road', 'Ahmedabad', 'Gujarat', '380009'),
(9, '22 Station Road', 'Lucknow', 'Uttar Pradesh', '226001'),
(10, '150 MG Road', 'Indore', 'Madhya Pradesh', '452001'),
(11, '67 Fort Area', 'Mumbai', 'Maharashtra', '400001'),
(12, '77 Sector 17', 'Chandigarh', 'Chandigarh', '160017'),
(13, '5 Cantonment', 'Hyderabad', 'Telangana', '500001'),
(14, '33 Rajpur Road', 'Dehradun', 'Uttarakhand', '248001'),
(15, '200 Lal Chowk', 'Srinagar', 'Jammu & Kashmir', '190001');
