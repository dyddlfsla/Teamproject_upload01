package whatMvc.A02_mvc.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Faq;
import whatMvc.A03_database.A01_data;



/**
 * Servlet implementation class D03_Faq3
 */
@WebServlet(name = "D03_Faq3.do", urlPatterns = { "/D03_Faq3.do" })
public class D03_Faq3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public D03_Faq3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String proc = request.getParameter("proc");
		System.out.println("proc:"+proc);
		String no = request.getParameter("no1");
		int no1=0; if(no!=null) no1 = Integer.parseInt(no);
		System.out.println(no1+":"+proc);
		if(proc!=null &&proc.equals("upt")) { 
			String name = request.getParameter("name");
			if(name!=null) {
				String writer = request.getParameter("writer");
				String category = request.getParameter("category");
				String contents = request.getParameter("contents");
				System.out.println("수정 처리 프로세스..");
				new A01_data().updateFaq(new Faq(name,writer,category,contents,no1));
				
			}
		}
		if(proc!=null &&proc.equals("del")) { 
			new A01_data().deleteFaq(no1);			
		}
		
		
		// 2. 모델데이터 처리.
		request.setAttribute("faq", new A01_data().getFaq(no1));
		
		
		// 3.view호출.
		String page = "Whatsup\\sign_login_find\\jsp\\d03_FAQ3.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
}


