<!DOCTYPE html>
<html> <head lang="en">
  <meta charset="UTF-8">
  <title>myFirstProject</title>
</head>
<body>
<div>
  <form action="${pageContext.request.contextPath}/myServlet" method="post">


  Enter Data:<br>
    <input type="text" name="firstname"><br><br>
    <input type="submit" name="save" value="Save"><br>
  </form> </div> </body> </html>