<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Availability</title>
<script>
  function showAvailability() {
    var doctorSelect = document.getElementById("doctors");
    var selectedDoctor = doctorSelect.options[doctorSelect.selectedIndex].value;

    var availability = "Unknown";
    if (selectedDoctor === "Dr. Smith") {
      availability = "Monday to Friday, 9:00 AM to 5:00 PM";
    } else if (selectedDoctor === "Dr. Johnson") {
      availability = "Tuesday, Thursday, Saturday, 10:00 AM to 3:00 PM";
    } else if (selectedDoctor === "Dr. Patel") {
      availability = "Monday, Wednesday, Friday, 8:00 AM to 6:00 PM";
    }

    // Set the value of the hidden input field
    document.getElementById("availabilityInput").value = availability;

    document.getElementById("availability").innerText = availability;
  }
</script>

</head>
<body>

<style>
body{
background-image:url("https://cdn.pixabay.com/photo/2012/03/04/00/01/background-21717_1280.jpg");
}
</style>
<form action="InsertAvailabilityServlet" method="post">
    <h2>Select Doctors</h2>
    <select id="doctors" name="doctors" onchange="showAvailability()">
        <option value="">select Doctors</option>
        <option value="Dr. Smith">Dr. Smith</option>
        <option value="Dr. Johnson">Dr. Johnson</option>
        <option value="Dr. Patel">Dr. Patel</option>
    </select><br>
    <h2>Select Disease</h2>
    <select id="diseases" name="diseases">
        <option value="">select Disease</option>
        <option value="Flu">Flu</option>
        <option value="Common Cold">Common Cold</option>
        <option value="Headache">Headache</option>
    </select>
    <h2>Availability</h2>
    <p id="availability">Please select a doctor to see availability</p>
    
    <!-- Hidden input field for availability -->
<input type="hidden" name="availability" id="availabilityInput">
    
    <input type="submit" value="Submit">
</form>

</body>
</html>
