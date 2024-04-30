<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
   body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url("https://t3.ftcdn.net/jpg/04/87/69/28/360_F_487692869_V8MZ1hLvhXQZKT50EV8Sh13AkdibGJb3.jpg"); /* Replace 'background.jpg' with the path to your background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

    .container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    h2 {
        color: #333;
        margin-bottom: 20px;
    }

    p {
        margin-bottom: 10px;
    }

    form {
        margin-bottom: 20px;
    }

    input[type="submit"],
    button {
        padding: 10px 20px;
        border: none;
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover,
    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Welcome</h2>
    <%
    String unameSession = (String)session.getAttribute("uname1");
    out.println("<p>Admin Name: " + unameSession + "</p>");
    %>
    <form action="addDoctorPage.jsp">
        <input type="submit" value="ADD DOCTORS">
    </form>
    <form action="DisplayDoctorsServlet">
        <input type="submit" value="DISPLAY DOCTORS">
    </form>
    <form action="PatientDetailsServlet">
        <input type="submit" value="PATIENTS DETAILS">
    </form>
    <form action="BookingTrackingServlet">
        <input type="submit" value="BOOKING DETAILS">
    </form>
    <form action="LogoutServlet" method="get">
        <button type="submit">Logout</button>
    </form>
</div>
</body>
</html>
