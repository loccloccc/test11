-- Sample products loaded when the application starts.
-- INSERT IGNORE prevents duplicate IDs from failing on subsequent starts.
INSERT IGNORE INTO products (id, name, description, price) VALUES
(1, 'Mechanical Keyboard', 'Bàn phím cơ dùng cho học tập và làm việc', 890000.00),
(2, 'Wireless Mouse', 'Chuột không dây kết nối USB receiver', 350000.00),
(3, 'USB-C Hub', 'Hub USB-C đa cổng cho laptop', 520000.00),
(4, 'Laptop Stand', 'Giá đỡ laptop bằng hợp kim nhôm', 420000.00),
(5, 'Headphone', 'Tai nghe chụp tai có micro', 690000.00);
