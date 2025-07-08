<!DOCTYPE html>
<html>
<head>
    <title>Create Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9f7f9;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        p {
            color: red;
        }
    </style>
</head>
<body>
    <h2>Add Student</h2>
    <form method="post">
        Roll No: <input name="rno" type="text" required /><br/>
        Name: <input name="name" type="text" required /><br/>
        Marks: <input name="marks" type="text" required /><br/>
        <input type="submit" value="Create" />
    </form>
    <p>{{msg}}</p>
    <a href="/">Back to Home</a>
</body>
</html>
