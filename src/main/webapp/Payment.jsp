<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers</title>
<style>
h1{
background-color: #f3812a;
}
*{
background-color: #ffccb3;
}
</style>
</head>
<body>
<%

int dist;
if("Bangalore".equals(request.getParameter("city"))&& "Bangalore".equals(request.getParameter("destination")))
	dist = 100;
if(("Bangalore".equals(request.getParameter("city"))&& "Chennai".equals(request.getParameter("destination")))||("Chennai".equals(request.getParameter("city"))&& "Bangalore".equals(request.getParameter("destination"))));
	dist = 500;
if(("Bangalore".equals(request.getParameter("city"))&& "Mumbai".equals(request.getParameter("destination")))||("Mumbai".equals(request.getParameter("city"))&& "Bangalore".equals(request.getParameter("destination"))));
	dist = 1100;
if(("Bangalore".equals(request.getParameter("city"))&& "Kolkata".equals(request.getParameter("destination")))||("Kolkata".equals(request.getParameter("city"))&& "Bangalore".equals(request.getParameter("destination"))));
	dist = 1200;
	
if("Chennai".equals(request.getParameter("city"))&& "Chennai".equals(request.getParameter("destination")))
	dist = 100;
if(("Chennai".equals(request.getParameter("city"))&& "Mumbai".equals(request.getParameter("destination")))||("Mumbai".equals(request.getParameter("city"))&& "Chennai".equals(request.getParameter("destination"))));
	dist = 900;
if(("Chennai".equals(request.getParameter("city"))&& "Kolkata".equals(request.getParameter("destination")))||("Kolkata".equals(request.getParameter("city"))&& "Chennai".equals(request.getParameter("destination"))));
	dist = 1050;

if("Kolkata".equals(request.getParameter("city"))&& "Kolkata".equals(request.getParameter("destination")))
	dist = 100;
if(("Kolkata".equals(request.getParameter("city"))&& "Mumbai".equals(request.getParameter("destination")))||("Mumbai".equals(request.getParameter("city"))&& "Kolkata".equals(request.getParameter("destination"))));
	dist = 350;


if("Mumbai".equals(request.getParameter("city"))&& "Mumbai".equals(request.getParameter("destination")))
	dist = 100;



int min_cost = 50;
int weight = Integer.parseInt(request.getParameter("weight"));
double cost = weight * 1 + dist*0.25;
double total_cost = min_cost + cost;

%>
<br><br>

<h1 align="center" >Summary</h1><br><br>
<h3 align="center" color="red"><%out.println("Courier Charge: "+min_cost); %></h3><br>
<h3 align="center" color="red"><%out.println("Your Courier Weight: "+weight); %></h3><br>
<h3 align="center" color="red"><%out.println("Price per gram: Rs. 1"); %></h3><br>
<h3 align="center" color="red"><%out.println("Distance between cities: "+dist); %></h3><br>
<h3 align="center" color="red"><%out.println("Price per km: Rs. 0.25"); %></h3><br><br>
<h3 align="center" color="red"><%out.println("Total Amount Payable: "+total_cost); %></h3><br>
<form action="Booking" method="get">
<input type="submit" name="pay_btn" value="Pay Now">
</form>
</body>
</html>

