--1. Kiểm tra Dữ liệu trống (Missing Values / NULL) - Đếm xem có bao nhiêu khách hàng bị thiếu điểm tín dụng
SELECT COUNT(*) AS KhachHang_ThieuDiem
FROM banking.users
WHERE credit_score IS NULL;

--2.Kiểm tra Dữ liệu trùng lặp (Duplicates) - Tìm những khách hàng có điểm tín dụng nằm ngoài vùng chuẩn
SELECT id, credit_score 
FROM banking.users
WHERE credit_score < 300 OR credit_score > 850;

--3. Kiểm tra Tính hợp lý của dữ liệu (Data Logic / Outliers) - Tìm những khách hàng có điểm tín dụng nằm ngoài vùng chuẩn
SELECT id, credit_score 
FROM banking.users
WHERE credit_score < 300 OR credit_score > 850;