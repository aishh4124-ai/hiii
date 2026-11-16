<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Login</h2>
    <input type="text" id="user" placeholder="Username"><br><br>
    <input type="password" id="pass" placeholder="Password"><br><br>
    <button onclick="login()">Login</button>
    <p id="msg"></p>

    <script src="script.js"></script>
</body>
</html>

js
function login() {
    fetch("login.json")
    .then(r => r.json())
    .then(d => {
        msg.innerHTML =
        user.value == d.username && pass.value == d.password
        ? "Login Successful"
        : "Invalid Login";
    });
}
