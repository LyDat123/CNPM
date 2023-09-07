<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa và Tải lên CSV</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> <!-- Đường dẫn tới Bootstrap CSS -->
    <link rel="stylesheet" href="style.css"> <!-- Đường dẫn tới style.css -->
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Chỉnh sửa và Tải lên CSV</h5>
                        <div class="form-group">
                            <input type="file" class="form-control-file" id="fileInput" accept=".csv">
                        </div>
                        <button id="loadCsv" class="btn btn-primary">Hiển thị và Chỉnh sửa CSV</button>
                        <div id="csvContainer" class="mt-3"></div>
                        <button id="uploadEditedCsv" class="btn btn-success mt-3" style="display:none;">Tải lên CSV đã chỉnh sửa</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="script.js"></script> <!-- Đường dẫn tới script.js -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
