<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://wallpapercave.com/wp/wp9829791.jpg');
            background-color: #f5f6fa;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #2f3640;
        }

        header {
            width: 100%;
            padding: 15px;
            background-color: #3498db;
            color: #fff;
            text-align: center;
        }

        table {
            width: 90%;
            max-width: 1200px;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px 15px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
            text-align: left;
        }

        td {
            color: #333;
        }

        .btn-book {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn-book:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>New Booking</h1>
        <nav>
            <a href="${pageContext.request.contextPath}/index">Home</a>
        </nav>
    </header>

    <h2>Select a Car for Booking</h2>

    <table>
        <thead>
            <tr>
                <th>Car Number</th>
                <th>Car Name</th>
                <th>Color</th>
                <th>Manufacturer</th>
                <th>Year Of Mfg</th>
                <th>Rent Rate (₹/hour)</th>
                <th>Variant Details</th>
                <th>Availability</th>
                <th>Book Now</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${carList}" var="car">
                <tr>
                    <td>${car.carNumber}</td>
                    <td>${car.carName}</td>
                    <td>${car.carColor}</td>
                    <td>${car.manufacturer}</td>
                    <td>${car.yearOfMfg}</td>
                    <td>₹${car.rentRate}/hour</td>
                    <td>
                        <c:set var="carVariant" value="${variantMap[car.variantId]}" />
                        <c:if test="${carVariant != null}">
                            <table>
                                <tr>
                                    <th>Variant Id</th>
                                    <td>${carVariant.variantId}</td>
                                </tr>
                                <tr>
                                    <th>Variant Name</th>
                                    <td>${carVariant.variantName}</td>
                                </tr>
                                <tr>
                                    <th>No. of Seats</th>
                                    <td>${carVariant.numberOfSeat}</td>
                                </tr>
                                <tr>
                                    <th>Fuel</th>
                                    <td>${carVariant.fuel}</td>
                                </tr>
                            </table>
                        </c:if>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${car.available == true}">Available</c:when>
                            <c:otherwise>Not Available</c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <form action="${pageContext.request.contextPath}/newBooking" method="post">
                            <input type="hidden" name="carNumber" value="${car.carNumber}" />
                            <input type="hidden" name="variantId" value="${car.variantId}" />
                            <input type="hidden" name="username" value="${carUserService.userName}" />
                            <input type="submit" value="Book Now" class="btn-book" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
