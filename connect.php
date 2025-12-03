<?php
// Bật hiển thị lỗi PHP để debug
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Thông tin kết nối database
$servername = "localhost"; // thường là localhost
$username = "root";        // username MySQL mặc định là root
$password = "";            // password, nếu bạn để trống thì để ""
$dbname = "quanlynhansu";  // đổi thành tên database của bạn

// Tạo kết nối
$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}
// echo "Kết nối thành công"; // dùng để kiểm tra, xong thì comment lại
?>
