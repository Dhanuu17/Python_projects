<!DOCTYPE html>
<html>
<head>
    <title>Motivational Msg App by Dhan</title>
    <style>
        body {
            font-size: 40px;
            text-align: center;
            margin: auto;
            background-color: lightgreen;
        }
    </style>
</head>
<body>
    <h1>Motivational Msg App //by<br>Dhan</h1>
    <form method="POST">
        <input type="submit" value="Show Msg">
    </form>
    % if msg:
        <h2>{{ msg }}</h2>
    % end
</body>
</html>