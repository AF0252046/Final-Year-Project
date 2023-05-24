package login_register;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int user_id=0;
			String f_name=request.getParameter("f_name");
			String l_name=request.getParameter("l_name");
			String phone_no=request.getParameter("phone_no");
			String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			String address=request.getParameter("address");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vahan","root","admin");
			PreparedStatement ps=con.prepareStatement("select max(user_id) from user");
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				user_id=rs.getInt(1);
				user_id++;
			}
				try {
				PreparedStatement ps2=con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
				ps2.setInt(1, user_id);
				ps2.setString(2, f_name);
				ps2.setString(3, l_name);
				ps2.setString(4, phone_no);
				ps2.setString(5, email);
				ps2.setString(6, pass);
				ps2.setString(7, address);
				
				int i =ps2.executeUpdate();
				
				if(i>0) {
					response.sendRedirect("login.jsp");
				}}
				catch (SQLException ex) 
				{
					PrintWriter out=response.getWriter();
					out.println("<script type=\"text/javascript\">");
					   out.println("alert('This User Already exists');");
					   out.println("location='register.jsp';");
					   out.println("</script>");
				}
				
				
				
				
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}

}
