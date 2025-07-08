

<!DOCTYPE html>
<html>
  <head>
    <title>Even Odd App Dhann</title>
    <style>
      * {
        font-size: 60px;
        text-align: center;
        margin: auto;
      }
      body {
        background-color: azure;
      }
      h1 {
        background-color: black;
        color: white;
        margin-top: 10px;
        margin-bottom: 10px;
        width: 70%;
        border-radius: 30px;
      }
    </style>
  </head>
  <body>
    <h1>Even Odd App</h1>
    <form method="POST">
      <input type="number" name="num" placeholder="Enter integer" value="{{num}}" required />
      <br /><br />
      <input type="submit" value="Find Even Odd" />
    </form>
    % if msg:
      <h2>{{msg}}</h2>
    % end
  </body>
</html>
