package whatMvc.A02_mvc.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A03_database.project_db;

/**
 * Servlet implementation class a02_groups
 */
@WebServlet(name = "groups.do", urlPatterns = { "/groups.do" })
public class a02_groups extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public a02_groups() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");

		request.setAttribute("group1List", new project_db().group1List());
		request.setAttribute("gnameList", new project_db().gnameList());
		
		request.setAttribute("group1List2", new project_db().group1List2());
		request.setAttribute("gnameList2", new project_db().gnameList2());
		String page = "Whatsup\\sign_login_find\\A02_groups.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
