package SeedApp;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Team Rocket
 * @version 1.0
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	protected static HttpSession session;
	private static final long serialVersionUID = 1L;
	private User currentUser;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDatabase.init();
		if (LoginServlet.session  == null)
		{
			currentUser = null;
		}
		else
		{
			currentUser = (User)LoginServlet.session.getAttribute("currentSessionUser");
		}
		
		
		User user = new User();
		user.setUserName(request.getParameter("un"));
		user.setPassword(request.getParameter("pw"));
		user.setFirstName(request.getParameter("fn"));
		user.setLastName(request.getParameter("ln"));
		
		if (request.getParameter("un").equals("") || request.getParameter("pw").equals("") || request.getParameter("fn").equals("") || request.getParameter("ln").equals("")){
			response.sendRedirect("emptyFields.jsp");
			
		} else {
		
		if (request.getParameter("type") != null)
		{
			user.setRole(request.getParameter("type"));
		}
		else
		{
			user.setRole("farmer");
		}
		
		
		if (userDatabase.userAdd(user))
		{
//			<input type="hidden" name="myObject" value="${myObjectAsString}" />
//			String myObjectId = UUID.randomUUID().toString();
//			request.getSession().setAttribute(myObjectId, myObject);
			
			if (currentUser == null)
			{
				session = request.getSession(true);
				session.setAttribute("currentSessionUser", user);
				request.getRequestDispatcher("congratNewUser.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("congratNewUserAdmin.jsp").forward(request, response);
			}
		}
		else
		{
			if (currentUser == null)
			{
				response.sendRedirect("cannotCreateUser.jsp");
			}
			else
			{
				response.sendRedirect("cannotCreateUserAdmin.jsp");
			}
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
