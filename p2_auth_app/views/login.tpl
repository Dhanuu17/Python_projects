<html>
<head>
    <title>Auth App by Dhan</title>
    <style>
        * { font-size: 30px; text-align: center; margin: auto; }
        body { background-color: linen; }
        h1 {
            background-color: black;
            color: white;
            width: 70%;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 30px;
        }
    </style>
</head>
<body>
    <h1>Login Page</h1>
    <a href="/signup">New Users Click Here</a>
    <br/><br/>

    <form method="POST">
        <label>User Name :</label>
        <input type="text" name="un" placeholder="enter" required />
        <br/><br/>
        <label>Enter Password :</label>
        <input type="password" name="pw" placeholder="enter" required />
        <br/><br/>
        <input type="submit" value="Login" />
    </form>

    % if msg:
        <h2>{{ msg }}</h2>
    % end
</body>
</html>
