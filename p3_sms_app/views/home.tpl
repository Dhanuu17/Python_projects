<!DOCTYPE html>
<html>
<head>
    <title>Home - Student Records</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        a {
            background-color: #007BFF;
            color: white;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Student Records</h2>
    <table>
        <tr><th>Roll No</th><th>Name</th><th>Marks</th><th>Action</th></tr>
        % for row in msg:
        <tr>
            <td>{{row[0]}}</td>
            <td>{{row[1]}}</td>
            <td>{{row[2]}}</td>
            <td><a href="/delete/{{row[0]}}">Delete</a></td>
        </tr>
        % end
    </table>
    <br>
    <a href="/create">Add Student</a>
</body>
</html>
