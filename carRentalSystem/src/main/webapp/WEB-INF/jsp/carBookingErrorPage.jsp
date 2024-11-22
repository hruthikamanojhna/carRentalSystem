<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Error Page</title>
</head>
<body>
    <div align="center">
        <h1 style="color:red">
            ${errorMessage}
        </h1>
        <br/>
        <h3><a href="/index">Return</a></h3>
    </div>
</body>
</html>
