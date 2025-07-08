<html>
    <head>
        <title> Square Finder App by Dhann</title>
        <style>
            * { font-size: 40px; text-align:center; margin:auto;}
            body { background-color:azure; }
            h1 { background-color:black;
            color:white; width:70%;
            margin-top:20px;
            margin-bottom:20px;
            border-radius:30px; }
        </style>
    </head>
    <body>
        <h1> Square Finder App </h1>
        <form method="POST">
            <input type="number"
                   step="any"
                   name="num"
                   placeholder="enter number"
                   required/>
            <br/><br/>
            <input type="submit" value="Find Square"/>
        </form>
        % if msg:
            <h2> {{ msg }} </h2>
        % end
        <a href="about"> About Us </a>
    </body>
</html>