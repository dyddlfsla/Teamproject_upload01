package whatMvc.A02_mvc.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Event;
import whatMvc.A01_vo.Faq;
import whatMvc.A03_database.A01_data;

/**
 * Servlet implementation class C02_Event2
 */
@WebServlet(name = "C02_Event2.do", urlPatterns = { "/C02_Event2.do" })
public class C02_Event2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C02_Event2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		// public Event(String etype, String company, 
		//String insday, String ineday, String contents, String process) 
		String etype = request.getParameter("etype");
		String company = request.getParameter("company");
		String insday = request.getParameter("insday");
		String ineday = request.getParameter("ineday");
		String contents = request.getParameter("contents");
		String process = request.getParameter("process");
		System.out.println("##호출 1");
		// 요청값과 함께 데이터 베이스 처리..
		if( etype!=null ) {
			System.out.println("##호출 2");
			A01_data db = new A01_data();
			db.insertEvent(new Event(etype,company,insday,ineday,contents,process));
			
			request.setAttribute("isSucc", true);
			
		}
		System.out.println("##호출 3");	
	
		RequestDispatcher rd = request.getRequestDispatcher("Whatsup\\sign_login_find\\jsp\\c02_event2.jsp");
		rd.forward(request, response);
	}
}

