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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected static HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			userDatabase.init();
			User user = new User();
			user.setUserName(request.getParameter("un"));
			user.setPassword(request.getParameter("pw"));
			
			user = loginCheck.login(user);
				
			if(user.isValid())
			{
				if(user.isLocked())
				{
					session = request.getSession(true);
					session.setAttribute("currentSessionUser", user);
					response.sendRedirect("userLocked.jsp");
				}
				else
				{
					if (user.getRole().equals("admin"))
					{
						session = request.getSession(true);
						session.setAttribute("currentSessionUser", user);
						response.sendRedirect("adminHomepage.jsp");
					}
					else
					{
						session = request.getSession(true);
						session.setAttribute("currentSessionUser", user);
						response.sendRedirect("farmerHomepage.jsp");
					}
				}
			}
			else
			{
				if(!user.isValidUser())
				{
					session = request.getSession(true);
					session.setAttribute("currentSessionUser", user);
					response.sendRedirect("invalidLogin.jsp");
				}
				else
				{
					if(user.isLocked())
					{
						session = request.getSession(true);
						session.setAttribute("currentSessionUser", user);
						response.sendRedirect("userLocked.jsp");
					}
					else
					{
						session = request.getSession(true);
						session.setAttribute("currentSessionUser", user);
						response.sendRedirect("wrongpassLogin.jsp");
					}
				}	
			}
		}
		catch(Throwable theException)
		{
			System.out.println(theException);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
