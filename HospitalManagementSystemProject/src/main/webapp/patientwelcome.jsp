<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            text-align: center;
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }

        h1 {
            color: #007bff;
        }

        h1, h2 {
            margin-bottom: 20px;
        }

        h2 {
            font-size: 20px;
        }

        p {
            margin-bottom: 10px;
        }

        .btn-container {
            margin-bottom: 20px;
        }

        button {
            padding: 10px 20px;
            border: none;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome</h1>
        <br>
        <%
            String unameSession = (String)session.getAttribute("uname1");
            out.println("<h2>Patient Name: " + unameSession + "</h2>");
        %>
        <div class="btn-container">
            <form action="PatientViewServlet" method="get">
                <button type="submit">View Details</button>
            </form>
        </div>
        <div class="btn-container">
            <form action="BookSlot.jsp" method="get">
                <button type="submit">Book Slot</button>
            </form>
        </div>
        <div class="btn-container">
            <form action="LogoutServlet" method="get">
                <button type="submit">Logout</button>
            </form>
        </div>
    </div>
</body>
</html>
