import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "myServlet")
public class myServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        response.setContentType("text/html");


        Connection c = null;
        PreparedStatement pstmt;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String data = request.getParameter("data");

        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/testdb", "postgres", "saad");
            pstmt = c.prepareStatement("insert into mytable(myvalue) values (?)");
            pstmt.setString(1, data);
            pstmt.executeUpdate();
            out.write("success");
        } catch (Exception ex)

        {
            out.write(ex + "");

        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
