<!DOCTYPE html>
<html>
<head>
<title>Insert Data</title>
</head>
<body>
    <!-- Give Servlet reference to the form as an instances 
    GET and POST services can be according to the problem statement-->
    <form action="/insertIntoMySQL" method="post">
	<br>
        <p>Phone Name:</p> 
        <!-- Create an element with mandatory name attribute,
        so that data can be transfer to the servlet using getParameter() -->
        <input type="text" name="Name"/>
        <br/>
	<br>
        <p>Phone Price:</p> 
        <input type="text" name="Price"/>
        <br/>
	<br>
        <p>Phone Quantity:</p> 
        <input type="text" name="Quantity"/>
        <br/>
	<br>
        <p>Phone Description:</p> 
        <input type="text" name="Description"/>
        <br/>
        <input type="submit"/>
    </form>
</body>
</html>
