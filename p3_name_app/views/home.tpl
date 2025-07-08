<html>
  <head>
    <title>
      Name App by dhan
    </title>
  </head>
  <body>
    <h1> Name App </h1>
    <form method="POST">
      <input type="text" name="name" placeholder="enter your name" />
      <br/><br/>
      <input type="submit" />
    </form>

    % if msg:
      <h2> {{ msg }} </h2>
    % end
  </body>
</html>