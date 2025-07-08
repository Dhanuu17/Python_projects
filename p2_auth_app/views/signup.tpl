<html>
<head>
    <title>Signup - Auth App by Dhan</title>
    <style>
        * { font-size: 30px; text-align: center; margin: auto; }
        body { background-color: lavenderblush; }
        h1 {
            background-color: darkblue;
            color: white;
            width: 70%;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 30px;
        }
    </style>
</head>
<body>
    <h1>Signup Page</h1>
    <a href="/">Already Registered? Login Here</a>
    <br/><br/>

    <form method="POST">
        <label>User Name :</label>
        <input type="text" name="un" placeholder="create username" required />
        <br/><br/>
        <label>Enter Password :</label>
        <input type="password" name="p1" placeholder="enter password" required />
        <br/><br/>
        <label>Confirm Password :</label>
        <input type="password" name="p2" placeholder="re-enter password" required />
        <br/><br/>
        <input type="submit" value="Sign Up" />
    </form>

    % if msg:
        <h2>{{ msg }}</h2>
    % end
</body>
</html>
