<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Update</title>
</head>
<body>
    <form id="updateForm" action="UpdatePatientServlet" method="POST">
        <input type="hidden" name="no" id="no">
        Name: <input type="text" name="name" id="name"><br>
        Age: <input type="number" name="age" id="age"><br>
        Address: <input type="text" name="address" id="address"><br>
        Login Date: <input type="datetime-local" name="logindate" id="logindate"><br>
<!--         Password: <input type="password" name="pwd" id="pwd"><br>
 -->        <button type="submit" style="color: red;">Update</button>
    </form>

    <script>
       function getParameterByName(name, url) {
            if (!url) url = window.location.href;
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }
        var no = getParameterByName('no');
        var name = getParameterByName('name');
        var age = getParameterByName('age');
        var address = getParameterByName('address');
        var logindate = getParameterByName('logindate');

        document.getElementById('no').value = no;
        document.getElementById('name').value = name;
        document.getElementById('age').value = age;
        document.getElementById('address').value = address;
        document.getElementById('logindate').value = logindate;
    </script>
</body>
</html>
