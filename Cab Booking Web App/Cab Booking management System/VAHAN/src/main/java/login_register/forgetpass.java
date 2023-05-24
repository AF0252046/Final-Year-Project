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

/**
 * Servlet implementation class forgetpass
 */
public class forgetpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgetpass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String Quer="update user set password=? where email=?";
			String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vahan","root","admin");
			PreparedStatement st=con.prepareStatement(Quer);
			st.setString(1, pass);
			st.setString(2,email);
			st.executeUpdate();
			
			PrintWriter out=response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert(' Your Password Has been Updated Successfully');");
			   out.println("location='login.jsp';");
			   out.println("</script>");
			
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		}
	}


