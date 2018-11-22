

<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<!--Directives example-->

<%







    //    String user = request.getParameter("name");
//    String emaa = request.getParameter("las");
//    String reg = request.getParameter("sta");
//    String pass = request.getParameter("uname");
//    String pass2 = request.getParameter("pas");
//
//    PrintWriter pw=response.getWriter();
//    pw.write("<html>\n" +
//            "<head>\n" +
//            "  <title></title>\n" +
//            "</head>\n" +
//            "<body><br>" +
//            "First Name is : "+user+"<br>"+
//            "Last Name is : "+emaa+"<br>"+
//            "State is : "+reg+"<br>"+
//            "UserName : "+pass+"<br>"+
//            "Password is : "+pass2+"<br>"+
//
//            "</body>\n" +
//            "</html>");
//


    String fname = request.getParameter("name");
    String lname = request.getParameter("las");
    String email = request.getParameter("sta");
    String user = request.getParameter("uname");




    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/login", "postgres", "saad");
    PreparedStatement st = con.prepareStatement("insert into members(myvalue,myvalue1,myvalue2,myvalue3) VALUES ('" + fname + "','" + lname + "','" + email + "','" + user + "','");


    //ResultSet rs;
    int i = st.executeUpdate();

    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }



%>


