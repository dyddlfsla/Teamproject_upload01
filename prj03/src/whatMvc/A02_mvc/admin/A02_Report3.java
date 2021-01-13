package whatMvc.A02_mvc.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Faq;
import whatMvc.A01_vo.Report;
import whatMvc.A03_database.A01_data;

/**
 * Servlet implementation class A02_Report3
 */
@WebServlet(name = "A02_Report3.do", urlPatterns = { "/A02_Report3.do" })
public class A02_Report3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_Report3() {
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
		String no1 = request.getParameter("no");
		int no=0; if(no1!=null) no = Integer.parseInt(no1);
		System.out.println(no+":"+proc);
		if(proc!=null &&proc.equals("upt")) { 
		/*
		 report = new Report(rs.getInt("no"), rs.getString("id"),
						rs.getString("rid"),
						rs.getString("post"), rs.getString("reason"),
						rs.getString("contents"),rs.getString("result2"));
			}
		 */
			String result2 = request.getParameter("result2");
			if(result2!=null) {	
				String contents = request.getParameter("contents");
				System.out.println("수정 처리 프로세스..");
				new A01_data().uptreport(new Report(contents,result2,no));
				
			}
		}
		// 2. 모델데이터 처리.
				request.setAttribute("report", new A01_data().getreport(no));
				
				
				// 3.view호출.
				String page = "Whatsup\\sign_login_find\\jsp\\b02_user2.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
		
	}

}
