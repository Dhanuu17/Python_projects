<html>
<head>
    <title>Home - Auth App</title>
    <style>
        * { font-size: 30px; text-align: center; margin: auto; }
        body { background-color: honeydew; }
        h1 {
            background-color: green;
            color: white;
            width: 70%;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 30px;
        }
    </style>
</head>
<body>
    <h1>Welcome, {{ msg }}</h1>
    <br/><br/>
    <a href="/logout">Logout</a>
</body>
</html>
