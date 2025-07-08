
<!DOCTYPE html>
<html>
<head>
  <title>ShopSmart - Product Dashboard</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f0f4f8;
      padding: 20px;
    }
    h2 {
      color: #2c3e50;
      font-size: 28px;
      margin-bottom: 20px;
    }
    table {
      border-collapse: collapse;
      width: 100%;
      background-color: white;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #34495e;
      color: white;
    }
    a {
      color: #3498db;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
    .btn {
      background-color: #2ecc71;
      color: white;
      padding: 10px 15px;
      text-decoration: none;
      border-radius: 4px;
      font-weight: bold;
    }
    .btn:hover {
      background-color: #27ae60;
    }
    form {
      margin-bottom: 20px;
    }
    input[type="text"] {
      padding: 8px;
      width: 200px;
    }
    input[type="submit"] {
      padding: 8px 12px;
    }
  </style>
</head>
<body>
  <h2>🛒 ShopSmart - Product Dashboard</h2>
  <form action="/search" method="get">
    <input name="q" type="text" placeholder="Search product name" />
    <input type="submit" value="Search" />
  </form>
  <table>
    <tr><th>ID</th><th>Name</th><th>Price (₹)</th><th>Action</th></tr>
    % for pid, name, price in products:
      <tr>
        <td>{{pid}}</td>
        <td>{{name}}</td>
        <td>{{price}}</td>
        <td>
          <a href="/edit/{{pid}}">Edit</a> |
          <a href="/delete/{{pid}}" onclick="return confirm('Are you sure?')">Delete</a>
        </td>
      </tr>
    % end
  </table>
  <br>
  <a href="/create" class="btn">➕ Add New Product</a>
</body>
</html>
