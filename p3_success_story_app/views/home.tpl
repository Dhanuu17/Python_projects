<!DOCTYPE html>
<html>
<head>
    <title>Success Story App by Dhan</title>
    <style>
        * { font-size: 40px; text-align: center; }
        body { background-color: azure; }
    </style>
</head>
<body>
    <h1>Success Story App</h1>
    <form method="POST">
        <!-- Name field -->
        <input type="text" name="name" placeholder="Enter name" required/><br/><br/>

        <!-- Company field -->
        <input type="text" name="company" placeholder="Enter company name" required/><br/><br/>

        <!-- Package field -->
        <input type="number" name="pkg" placeholder="Enter package" step="any" required/><br/><br/>

        <input type="submit" value="Submit" />
    </form>
    
    <!-- Display success or error message -->
    % if msg:
        <p>{{msg}}</p>
    % endif

</body>
</html>
