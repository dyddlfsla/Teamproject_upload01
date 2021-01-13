package whatMvc.A02_mvc.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Faq;
import whatMvc.A03_database.A01_data;



/**
 * Servlet implementation class D01_Faq
 */
@WebServlet(name = "D01_Faq.do", urlPatterns = { "/D01_Faq.do" })
public class D01_Faq extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public D01_Faq() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		A01_data db = new A01_data();
		ArrayList<Faq> f = db.flist();
		request.setAttribute("filst", f);
		
		RequestDispatcher rd = request.getRequestDispatcher("Whatsup\\sign_login_find\\jsp\\d01_FAQ.jsp");
		rd.forward(request, response);
		
		
	}

}
