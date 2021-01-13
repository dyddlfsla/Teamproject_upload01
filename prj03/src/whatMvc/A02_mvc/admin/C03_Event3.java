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
 * Servlet implementation class C03_Event3
 */
@WebServlet(name = "C03_Event3.do", urlPatterns = { "/C03_Event3.do" })
public class C03_Event3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C03_Event3() {
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
		String no = request.getParameter("eno");
		int eno=0; if(no!=null) eno = Integer.parseInt(no);
		System.out.println(eno+":"+proc);
		if(proc!=null &&proc.equals("upt")) { 
			System.out.println("수정 처리 시작!");
			String etype = request.getParameter("etype");
			if(etype!=null) {
				/*
					pstmt.setString(1, upt.getEtype());
			pstmt.setString(2, upt.getCompany());
			pstmt.setString(3, upt.getInsday());
			pstmt.setString(4, upt.getIneday());
			pstmt.setString(5, upt.getContents());
			pstmt.setString(6, upt.getProcess());
			pstmt.setInt(7, upt.getEno());
				 */
				
				String company = request.getParameter("company");
				String insday = request.getParameter("sday");
				String ineday = request.getParameter("eday");
				String contents = request.getParameter("contents");
				String process = request.getParameter("process");
				System.out.println("수정 처리 프로세스..");
				new A01_data().updateEvent(new Event(etype,company,insday,ineday,contents,process,eno));
				
			}
		}
		if(proc!=null &&proc.equals("del")) { 
			new A01_data().deleteEvent(eno);			
		}
		
		
		// 2. 모델데이터 처리.
		request.setAttribute("event", new A01_data().getEvent(eno));
		
		
		// 3.view호출.
		String page = "Whatsup\\sign_login_find\\jsp\\c03_event3.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
}
