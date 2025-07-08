
<!DOCTYPE html>
<html>
<head>
  <title>Edit Product - ShopSmart</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #fdfefe;
      padding: 30px;
    }
    h2 {
      color: #2c3e50;
      font-size: 26px;
    }
    form {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      width: 350px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
    }
    input[type="submit"] {
      background-color: #2980b9;
      color: white;
      font-weight: bold;
      border: none;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #216a94;
    }
  </style>
</head>
<body>
  <h2>✏️ Edit Product</h2>
  <form action="/edit/{{product[0]}}" method="post">
    Product ID: <input value="{{product[0]}}" type="number" disabled /><br>
    Product Name: <input name="name" value="{{product[1]}}" type="text" required /><br>
    Price (₹): <input name="price" value="{{product[2]}}" type="number" required /><br>
    <input value="Update Product" type="submit" />
  </form>
</body>
</html>
