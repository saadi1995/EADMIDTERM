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
  </form>

</div>


<script>
    function validateForm() {
        var x = document.getElementById("n1").value;
        var y = document.getElementById("n2").value;
        var z1 = document.getElementById("n3").value;
        var z2 = document.getElementById("n4").value;
        var z3 = document.getElementById("n5").value;
        var z4 = document.getElementById("n6").value;
        var z5 = document.getElementById("n7").value;
        var z6 = document.getElementById("n8").value;



        if (x == "" && y == "" && z1 == "" && z2 == "" && z3 == "" && z4 == "" && z5 == "" && z6 == "") {
            document.getElementById("error").innerHTML = "All fields are required";
            return false;
        }
    }

</script>


</body>





</html>