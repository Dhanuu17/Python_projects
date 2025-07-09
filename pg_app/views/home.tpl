<html>
<head>
    <title> Password Generator App by Kamal Sir </title>
    <style>
        * { font-size: 40px; text-align:center; }
        body { background-color: azure; }
    </style>
</head>
<body>
    <h1> Password Generator </h1>
    <form method="POST">
        <input type="number" name="length" 
               placeholder="enter password length" required 
               min=6 max=12 style="width:500px;"/>
        <br/><br/>
        <input type="checkbox" name="uc"/> UpperCase
        <input type="checkbox" name="di"/> Digits
        <input type="checkbox" name="sp"/> Special Characters
        <br/><br/>
        <input type="submit" value="Generate Password"/>
    </form>
    % if msg:
        <h2> {{ msg }} </h2>
    % end
</body>
</html>
