<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <script>
        function showNotification(message) {
            if (Notification.permission === "granted") {
                new Notification(message);
            }
        }

        <#if loginFailed?exists && loginFailed>
            window.onload = function() {
                showNotification("Invalid email or password");
            };
        </#if>
    </script>
</head>
<body>
<h1>Login</h1>
<form action="/login" method="post">
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
    </div>
    <button type="submit">Login</button>
</form>

<#if errorMessage?exists>
<div style="color:red;">${errorMessage}</div>
</#if>
</body>
        </html>
