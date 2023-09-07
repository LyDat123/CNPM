<?php
if ($_FILES["fileToUpload"]["size"] > 0) {
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    if ($fileType != "csv") {
        echo "Xin lỗi, chỉ cho phép tải lên file CSV.";
        $uploadOk = 0;
    }

    if ($uploadOk == 0) {
        echo "Xin lỗi, file của bạn không được tải lên.";
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "Tải lên file thành công.";

            // Thêm thẻ link để bao gồm tệp CSS
            echo '<link rel="stylesheet" href="style.css">';
            
            // Hiển thị nội dung CSV tại đây (nếu cần)
        } else {
            echo "Xin lỗi, có lỗi xảy ra khi tải lên file của bạn.";
        }
    }
}
?>
