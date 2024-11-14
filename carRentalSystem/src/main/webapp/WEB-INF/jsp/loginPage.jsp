<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            background-image: url('https://www.hdwallpapers.in/download/red_lamborghini_aventador_autumn_road_car_4k_hd_cars-HD.jpg'); /* Add your image URL here */
            background-size: cover; /* Ensure the image covers the whole screen */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            background-color: rgba(255, 255, 255, 0.8); /* Add transparency to make text more readable */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
        }

        h3 {
            margin-bottom: 20px;
            color: #333;
            font-size: 1.5em;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 1em;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        h2 {
            margin-top: 20px;
            font-size: 1em;
        }

        h2 a, .extra-link a {
            text-decoration: none;
            color: #007BFF;
        }

        h2 a:hover, .extra-link a:hover {
            color: #0056b3;
        }

        .extra-link {
            margin-top: 10px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="login-box">
            <h3>Login</h3>
            <form action="/login" method="post">
                <label for="username">Enter User Id:</label>
                <input type="text" id="username" name="username" placeholder="User ID" required />
                
                <label for="password">Enter Password:</label>
                <input type="password" id="password" name="password" placeholder="Password" required />

                <input type="submit" value="Submit" />
            </form>
            <h2>
                <a href="/register">Register for new User</a>
            </h2>
            <div class="extra-link">
                <a href="/forgotPassword">Forgot Password?</a>
            </div>
        </div>
    </div>

</body>
</html>
