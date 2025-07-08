<html>
<head>
    <title>Language You Know App by dhan</title>
    <style>
        * { font-size: 60px; text-align: center; margin: auto; }
        body { background-color: lightblue; }
        h1 { background-color: black; color: white; margin-top: 10px;
             margin-bottom: 10px; width: 70%; border-radius: 30px; }
    </style>
</head>
<body>
    <h1>Language You Know App</h1>

    <form method="POST">
        <input type="text" name="name" placeholder="enter name" required/>
        <br/><br/>
        <input type="checkbox" name="py"> Python
        <input type="checkbox" name="ja"> Java
        <input type="checkbox" name="js"> JavaScript
        <br/><br/>
        <input type="submit"/>
    </form>

    % if msg:
        <h2>{{ msg }}</h2>
</body>
</html>