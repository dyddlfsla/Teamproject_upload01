package whatMvc.A02_mvc.sign_login_find;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.*;
import whatMvc.A03_database.signup;

/**
 * Servlet implementation class signup_1
 */
@WebServlet(name = "signup1.do", urlPatterns = { "/signup1.do" })
public class signup_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup_1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		// 한글
		String id = request.getParameter("id"); 
		String pass = request.getParameter("pass"); 
		String name  = request.getParameter("name"); 
		String telS  = request.getParameter("telS"); 
		if(id!=null) { 
			int tel = Integer.parseInt(telS);
			signup db = new signup();
			db.insertmember(new Member(id,pass,name,tel));
			request.setAttribute("isInsSuss", true);
		}
		//String page = "a11_mvc\\a01_mvc.jsp"; // 출력할 jsp페이지 호출..
	    //RequestDispatcher rd = request.getRequestDispatcher(page);
		String page = "Whatsup\\sign_login_find\\A01_signup_1.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
