<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Square Calculator</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
  body {
    font-family: Arial, sans-serif;
    background:
      linear-gradient(rgba(30, 60, 114, 0.8), rgba(42, 82, 152, 0.8)),
      url('https://images.unsplash.com/photo-1517694712202-14dd9538aa97?auto=format&fit=crop&w=1920&q=80') no-repeat center center fixed;
    background-size: cover;
    color: #f4e9d4;
    display: flex;
    justify-content: center;
    align-items: center;
    height:100vh;
    margin:0;
  }
  .box {
    background: #0a1a2b;
    backdrop-filter: blur(12px);
    border-radius: 12px;
    padding: 40px;
    max-width: 400px;
    width:100%;
    text-align: center;
    box-shadow:
      0 0 10px #d4af37aa,
      0 0 30px #d4af3777,
      inset 0 0 60px #80651733;
    color: #f4e9d4;
    animation: floatBox 3s ease-in-out infinite;
  }
  @keyframes floatBox {
    0%,100% { transform: translateY(0px); }
    50% { transform: translateY(-3px); }
  }
  h1 {
    font-size: 30px;
    color: #d4af37;
    margin-bottom: 20px;
    text-shadow: 0 0 8px #d4af37aa;
  }
  input[type="number"], input[type="submit"] {
    width:100%;
    padding:14px 0;
    font-size:16px;
    border-radius:8px;
    border:2px solid rgba(212,175,55,0.3);
    box-sizing:border-box;
    transition:all 0.3s ease;
    display:block;
  }
  input[type="number"] {
    margin:15px 0;
    background-color: rgba(212,175,55,0.1);
    color:#f4e9d4;
  }
  input[type="number"]:focus {
    border-color: #d4af37;
    outline:none;
    box-shadow:0 0 12px #d4af37, inset 0 0 12px #d4af37cc;
    background-color: rgba(212,175,55,0.15);
  }
  input[type="submit"] {
    font-weight:bold;
    color:#0a1a2b;
    background-color:#d4af37;
    border:none;
    cursor:pointer;
    box-shadow:0 4px 10px #d4af37aa;
  }
  input[type="submit"]:hover {
    background-color:#b3922f;
    box-shadow:0 8px 20px #d4af3780;
    transform:translateY(-2px);
  }
  .result {
    margin-top:25px;
    font-size:18px;
    font-weight:bold;
    color:#d4af37;
    text-shadow:0 0 6px #d4af37aa;
    transition:transform 0.3s ease;
  }
  .result:hover {
    transform:scale(1.1);
  }
  .error {
    color:#ff6b6b;
    font-weight:bold;
    text-shadow:0 0 4px #ff6b6bbb;
  }
</style>
</head>
<body>
  <div class="box">
    <h1>Square Calculator</h1>
    <form id="squareForm">
      <input type="number" step="any" id="num" placeholder="Enter a number" required />
      <input type="submit" value="Calculate Square" />
    </form>
    <div class="result" id="results"></div>
  </div>

  <script>
    const form = document.getElementById('squareForm');
    const results = document.getElementById('results');

    form.addEventListener('submit', function(event) {
      event.preventDefault();
      const num = parseFloat(document.getElementById('num').value);
      if (isNaN(num)) {
        results.innerHTML = '<div class="error">Invalid input! Please enter a number.</div>';
      } else {
        results.textContent = `Result: ${num} × ${num} = ${num * num}`;
      }
    });
  </script>
</body>
</html>
