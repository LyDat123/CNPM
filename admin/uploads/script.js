document.getElementById('loadCsv').addEventListener('click', function() {
    var fileInput = document.getElementById('fileInput');
    var csvContainer = document.getElementById('csvContainer');
    var uploadButton = document.getElementById('uploadEditedCsv');

    var file = fileInput.files[0];
    var reader = new FileReader();

    reader.onload = function(e) {
        var csv = e.target.result;
        var lines = csv.split('\n');
        var table = '<table border="1">';

        var linkElement = document.createElement('link');
        linkElement.rel = 'stylesheet';
        linkElement.href = 'style.css'; // Đường dẫn đến tệp CSS của bạn
        document.head.appendChild(linkElement);

        for (var i = 0; i < lines.length; i++) {
            var cells = lines[i].split(',');
            table += '<tr>';
            for (var j = 0; j < cells.length; j++) {
                table += '<td contenteditable>' + cells[j] + '</td>';
            }
            table += '</tr>';
        }

        table += '</table>';
        csvContainer.innerHTML = table;
        uploadButton.style.display = 'block';
    }

    reader.readAsText(file);
});

document.getElementById('uploadEditedCsv').addEventListener('click', function() {
    var table = document.querySelector('#csvContainer table');
    var rows = table.querySelectorAll('tr');
    var csvContent = '';

    rows.forEach(function(row) {
        var cells = row.querySelectorAll('td');
        var rowData = Array.from(cells).map(cell => cell.textContent.trim());
        csvContent += rowData.join(',') + '\n';
    });

    var blob = new Blob([csvContent], { type: 'text/csv' });
    var url = URL.createObjectURL(blob);

    var a = document.createElement('a');
    a.href = url;
    a.download = 'edited_file.csv';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
});

document.getElementById('deleteRow').addEventListener('click', function() {
    var table = document.querySelector('#csvContainer table');
    var selectedRow = table.querySelector('.selected');

    if (selectedRow) {
        selectedRow.parentNode.removeChild(selectedRow);
    }
});

document.getElementById('deleteColumn').addEventListener('click', function() {
    var table = document.querySelector('#csvContainer table');
    var columnIndex = -1;
    var headers = table.querySelectorAll('th');

    for (var i = 0; i < headers.length; i++) {
        if (headers[i].classList.contains('selected')) {
            columnIndex = i;
            break;
        }
    }

    if (columnIndex >= 0) {
        var rows = table.querySelectorAll('tr');
        for (var i = 0; i < rows.length; i++) {
            rows[i].removeChild(rows[i].cells[columnIndex]);
        }
    }
});

document.addEventListener('click', function(e) {
    var target = e.target;

    if (target.tagName == 'TD') {
        target.classList.toggle('selected');
    }
});
