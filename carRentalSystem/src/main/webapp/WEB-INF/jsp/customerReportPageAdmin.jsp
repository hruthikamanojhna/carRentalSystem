<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Report Page (Admin)</title>
</head>
<body>
    <div align="center">
        <h1><u>Customer Report</u></h1>

        <table border="1">
            <tr>
                <th>Customer ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>License</th>
                <th>Expiry Date</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td>${customer.address}</td>
                    <td>${customer.mobile}</td>
                    <td>${customer.license}</td>
                    <td>${customer.expiryDate}</td>
                    <td>
                        <!-- Update and Delete Links -->
                        <a href="/customerUpdate/${customer.id}">Update</a> | 
                        <a href="/customerDelete/${customer.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
