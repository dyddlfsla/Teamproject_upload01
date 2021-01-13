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
 * Servlet implementation class wishlist
 */
@WebServlet("/wishlist")
public class wishlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wishlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		request.setAttribute("nlist", new project_db().nableList());
		
		// 3. view단 호출
		RequestDispatcher rd = request.getRequestDispatcher("main\\my_wishlist.jsp");
		// request에 있는 모델을 넘기기 위해서 forward 처리
		rd.forward(request, response);
	}

}
