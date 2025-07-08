<html>
<head>
    <title>Even Odd Finder by Dhan</title>
    <style>
        * { font-size: 40px; text-align: center; }
        body { background-color: azure; }
    </style>
</head>
<body>
    <h1>Even Odd App</h1>
    <form method="POST">
        <input type="number" name="num" placeholder="Enter integer" required /><br><br/>
        <input type="submit" value="Find Even/Odd" />
    </form>
    % if msg :
        <h2>{{ msg }}</h2>

</body>
</html>
