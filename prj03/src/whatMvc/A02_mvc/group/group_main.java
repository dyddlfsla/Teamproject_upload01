package whatMvc.A02_mvc.group;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A03_database.project_db;





/**
 * Servlet implementation class group_main
 */
@WebServlet(name = "grouplist.do", urlPatterns = { "/grouplist.do" })
public class group_main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public group_main() {
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
		// 3. view단 호출
		RequestDispatcher rd = request.getRequestDispatcher("sign_login_find\\A02_groups.jsp");
		// request에 있는 모델을 넘기기 위해서 forward 처리
		rd.forward(request, response);
	}

}
