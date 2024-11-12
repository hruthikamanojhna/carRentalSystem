<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Entry Page</title>
</head>
<body>
    <div align="center">
        <h1><u>Customer Entry Page</u></h1>

        <!-- Form for customer entry -->
        <h2>
            <form:form action="/customerAdd" method="post" modelAttribute="customerRecord">

                <!-- Hidden fields for user name and email -->
                <form:hidden path="username" />
                <form:hidden path="email" />
				<form:hidden path="status"/>

                <!-- Form fields for user details -->
                <div>
                    User Name: 
                    <form:input path="username" disabled="true"/> 
                </div>
                <br/>
                
                <div>
                    Email: 
                    <form:input path="email" disabled="true"/>
                </div>
                <br/>

                <div>
                    Enter First Name: 
                    <form:input path="firstName"/>
                </div>
                <br/>

                <div>
                    Enter Last Name: 
                    <form:input path="lastName"/>
                </div>
                <br/>

                <div>
                    Enter Address:
                    <form:input path="address"/>
                </div>
                <br/>

                <div>
                    Enter Mobile Number: 
                    <form:input path="mobile"/>
                </div>
                <br/>

                <div>
                    Enter License Number:
                    <form:input path="license"/>
                </div>
                <br/>

                <div>
                    Enter License Expiry Date:
                    <form:input path="expiryDate" type="date" placeholder="dd-mm-yyyy" />
                </div>
                <br/>

                <div>
                    <input type="submit" value="Submit"/>
                </div>

            </form:form>
        </h2>
    </div>
</body>
</html>
