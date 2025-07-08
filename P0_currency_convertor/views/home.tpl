<html>
<head>
    <title>Live Currency Convertor by dhan</title>
    <style>
        * { font-size: 40px; text-align: center; margin: auto; }
        body { background-color: azure; }
    </style>
</head>
<body>
    <h1>Live Currency Convertor App</h1>
    <form method="POST">
        <input type="number" step="0.01" name="aid" placeholder="enter amt in $" value="{{ aid }}" required />
        <br/><br/>
        <input type="submit" value="Convert to ₹" />
    </form>
    % if msg:
        <h2>{{ msg }}</h2>
    % end
</body>
</html>