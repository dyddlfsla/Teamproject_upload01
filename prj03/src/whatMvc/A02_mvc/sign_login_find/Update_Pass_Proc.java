package whatMvc.A02_mvc.sign_login_find;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import whatMvc.A01_vo.Member;
import whatMvc.A03_database.signup;

/**
 * Servlet implementation class Update_Pass_Proc
 */
@WebServlet(name = "uptPassProc.do", urlPatterns = { "/uptPassProc.do" })
public class Update_Pass_Proc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Pass_Proc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 비밀번호 재설정
		signup db = new signup();
		String id= request.getParameter("id");
		String pass= request.getParameter("pass");
		//int pass = Integer.parseInt(passS);
	
		System.out.println("id:"+id);
		System.out.println("pass:"+pass);
		// id, pass 수정 처리 DB
		if(id!=null&&!id.equals("")) { 
			String proc = request.getParameter("proc");
			db.updatepass(new Member(pass,id));
		}
		
		
		
		String page = "Whatsup\\sign_login_find\\A01_UpdatePass.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
