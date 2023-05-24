

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class book
 */
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public book() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			int rsperkm=9;
			int total;
			String pl=request.getParameter("pu");
			String dl=request.getParameter("dn");
			
			
			if((pl.equals("borivali") && dl.equals("kandivali"))|| (pl.equals("kandivali") && dl.equals("borivali"))) {
			int km=10;
			}
			else {
				 PrintWriter pw=response.getWriter();
				pw.println(pl.equals("borivali")+" "+dl+" "+dl.getClass().getSimpleName());
			}
			}
			catch(Exception e) {
				e.printStackTrace();
			}

	}

}
