
<!DOCTYPE html>
<html>
<head>
  <title>Add New Product - ShopSmart</title>
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
      background-color: #27ae60;
      color: white;
      font-weight: bold;
      border: none;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #219150;
    }
  </style>
</head>
<body>
  <h2>➕ Add New Product</h2>
  <form action="/create" method="post">
    Product ID: <input name="pid" type="number" required /><br>
    Product Name: <input name="name" type="text" required /><br>
    Price (₹): <input name="price" type="number" required /><br>
    <input value="Add Product" type="submit" />
  </form>
</body>
</html>
