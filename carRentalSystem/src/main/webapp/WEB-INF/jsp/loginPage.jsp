<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | RoadTripRental</title>
    <style>
        body {
            background-image: url('https://www.hdwallpapers.in/download/red_lamborghini_aventador_autumn_road_car_4k_hd_cars-HD.jpg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            font-family: 'Roboto', Arial, sans-serif;
            color: #333;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            background-color: rgba(255, 255, 255, 0.9); 
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3); 
            text-align: center;
            width: 380px;
            backdrop-filter: blur(10px); 
        }

        .login-box h1 {
            font-size: 2em;
            color: #007BFF; 
            margin-bottom: 15px;
        }

        .login-box p.tagline {
            font-size: 1.1em;
            color: #555;
            margin-bottom: 25px;
            font-style: italic;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.1em;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        h2 {
            font-size: 1em;
            margin-top: 20px;
        }

        h2 a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        h2 a:hover {
            text-decoration: underline;
            color: #0056b3;
        }

        .extra-link {
            font-size: 0.9em;
            margin-top: 10px;
        }

        .logo {
            font-family: 'Poppins', Arial, sans-serif;
            color: #333;
            font-weight: bold;
            font-size: 1.8em;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="login-box">
            <h1 class="logo">RoadTripRental</h1>
            <p class="tagline">"Your journey, your road, your car"</p>
            <h3>Login</h3>
            <form action="/login" method="post">
                <label for="username">User ID:</label>
                <input type="text" id="username" name="username" placeholder="Enter User ID" required />
                
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required />

                <input type="submit" value="Login" />
            </form>
            <h2>
                <a href="/register">Register as a New User</a>
            </h2>
        </div>
    </div>

</body>
</html>
