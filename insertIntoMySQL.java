import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.PreparedStatement;
//import com.mysql.jdbc.Statement;

public class insertIntoMySQL extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		Statement stmt = null;
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch(Exception e) {
				System.out.println(e);
			}
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/demo", "supra91", "supra91");
			System.out.println("Connection successful to MySql database");
			stmt = conn.createStatement();
			PreparedStatement st = conn.prepareStatement("insert into cart values (?,?,?,?)");
			st.setString(1, request.getParameter("Name"));
			System.out.println("Name received" + request.getParameter("Price"));
			st.setInt(2, Integer.valueOf(request.getParameter("Price")));
			System.out.println("Price received");
			st.setInt(3, Integer.valueOf(request.getParameter("Quantity")));
			st.setString(4, request.getParameter("Description"));
			//String query1 = "insert into cart values ('Asus ROG 3', 59000, 1, 'ASUS ROG Phone 3 for playing games in HiDef')";
			//stmt.executeUpdate(query1);
			//query1 = "insert into cart  values ('Lenovo P2', 20000, 1, 'Lenovo P2 has the best battery ')";
			st.executeUpdate();
			st.close();
			conn.close();
			//Get a write pointer to display the successful result
			PrintWriter out = response.getWriter();
			out.println("<html><body><table border='1'><tr><td><b>Successfully Inserted data into MySQL database</b></td></tr>"+ "<tr><td><b> Now further moving on with deploying this application into microservices in </b></td></tr>"+" <tr><td><b>Code Ready Containers using Docker containers</br></td></tr>" + "<tr><td><b> With Java application running in one container and MySQL database running in another container</b></td></tr></table></body></html>");
			System.out.println("insert into table cart successful");
			System.out.println("Please check the database table cart to make sure that records were inserted successfully");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
	
