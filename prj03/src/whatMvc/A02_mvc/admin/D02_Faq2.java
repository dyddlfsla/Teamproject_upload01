package whatMvc.A02_mvc.admin;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Faq;
import whatMvc.A03_database.A01_data;



/**
 * Servlet implementation class D02_Faq2
 */
@WebServlet(name = "D02_Faq2.do", urlPatterns = { "/D02_Faq2.do" })
public class D02_Faq2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public D02_Faq2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		//public Faq(String name, String writer, String category, String contents)
		String no = request.getParameter("no1");
		String name = request.getParameter("name");
		String writer = request.getParameter("writer");
		String category = request.getParameter("category");
		String contents = request.getParameter("contents");
		// 요청값과 함께 데이터 베이스 처리..
		if( name!=null ) {
			int no1 = Integer.parseInt(no);
			A01_data db = new A01_data();
			db.insertFaq(new Faq(no1,name,writer,category,contents));
			request.setAttribute("isSucc", true);
		}
			
	
		RequestDispatcher rd = request.getRequestDispatcher("Whatsup\\sign_login_find\\jsp\\d02_FAQ2.jsp");
		rd.forward(request, response);
	}

}
