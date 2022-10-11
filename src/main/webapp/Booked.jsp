<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Confirmation</title>
<style>
h1{
background-color: #f3812a;
}
*{
background-color: #ffccb3;
}
body{
background-color: #ffccb3;
}
</style>
</head>
<body>
<br><br><br><br>
<h1 align="center">Your Booking is confirmed with booking Id: 
<% HttpSession http = request.getSession(); %>
<%=http.getAttribute("booking_id") %>
</h1><br><br>
<h2 align="center">
<%out.println("Shipment date: "+java.time.LocalDate.now());
%>
</h2>
<h2 align="center">
<% out.println("Delivery date: "+java.time.LocalDate.now().plusDays(5));%>
</h2>

</body>
</html>