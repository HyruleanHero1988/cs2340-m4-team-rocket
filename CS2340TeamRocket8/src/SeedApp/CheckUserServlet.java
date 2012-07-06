package SeedApp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Team Rocket
 * @version 1.0
 * Servlet implementation class CheckUserServlet
 */
@WebServlet("/CheckUserServlet")
public class CheckUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private User currentUser;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			if (LoginServlet.session == null)
			{
				currentUser = (User)RegisterServlet.session.getAttribute("currentSessionUser");
			}
			else
			{
				currentUser = (User)LoginServlet.session.getAttribute("currentSessionUser");
			}
			
//		request.getSession().removeAttribute(myObjectId);
		if (currentUser != null)
		{
			if (currentUser.getRole().equals("farmer"))
			{
				response.sendRedirect("farmerHomepage.jsp"); 
			}
			else
			{
				response.sendRedirect("adminHomepage.jsp");
			}
		}
		else
		{
			System.out.println("no user");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
