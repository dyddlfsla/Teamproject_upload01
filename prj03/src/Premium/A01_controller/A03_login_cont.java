package Premium.A01_controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import Premium.A02_service.A03_login_service;
import Premium.A02_service.A03_mail_service;
import Premium.vo.Emp1;
import Premium.vo.Mail;
import Premium.vo.Work;


@Controller
@RequestMapping("/pmslogin.do")
public class A03_login_cont {
	@Autowired
	private A03_login_service Service;
	// http://localhost:7080/prj03/pmslogin.do?method=pmslogin
	// http://localhost:7080/prj03/pmslogin.do?method=chatting
	@RequestMapping(params="method=pmslogin")
	public String empLogin // 로그인
	(@ModelAttribute("emp") Emp1 emp, HttpServletRequest request, Model d,HttpSession session) {
		session.removeAttribute("sessEmp");
		System.out.println(emp.getPass());
		System.out.println(emp.getEmpno());
		if(emp.getPass()!=null&&emp.getEmpno()!=0) {
			System.out.println(Service.empLogin(emp));
			Emp1 emplog=Service.empLogin(emp);
			if(emplog!=null) {
				//d.addAttribute("logname",emp);
				session=request.getSession();
				session.setAttribute("sessEmp", emplog);
			}//if(emp.getEname()==)
		}
		return "WEB-INF\\views\\login\\login.jsp";
	}
	
	@RequestMapping(params="method=findpass")
	public String findpass() {
		return "WEB-INF\\views\\login\\findpass.jsp";
	}
	
	@RequestMapping(params="method=changepass")
	public String changepass(Emp1 chpass, Model d) {
		
		return "WEB-INF\\views\\login\\changepass.jsp";
	}
	
	@RequestMapping(params="method=chkpass")
	public String chkpass() {
		return "WEB-INF\\views\\login\\join.jsp";
	}
	@RequestMapping(params="method=chkpass2")
	public String chkpass2() {
		return "WEB-INF\\views\\login\\changepass.jsp";
	}
// pmslogin.do?method=pmslogout

	@RequestMapping(params="method=pmslogout")
	public String pmslogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "WEB-INF\\views\\login\\login.jsp";
	}
	
	@RequestMapping(params="method=updatepass")
	public String updatepass(Emp1 upt, Model d) {
		System.out.println("수정 시작");
		d.addAttribute("proc", "upt");
		System.out.println("수정된 비밀번호"+upt.getEmpno());
		Service.updatePass(upt);
		System.out.println("수정된 비밀번호"+upt.getEmpno());
		return "WEB-INF\\views\\login\\changepass.jsp";
	}
	
	
	@Autowired(required=false)
	private LocaleResolver localeResolver;
	@RequestMapping(params="method=chLang")
	public String multiLang(
			@RequestParam(value="lang", defaultValue="ko")String lang,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("선택한 언어"+lang);
		// 언어 선택..
		Locale locale = new Locale(lang);
		localeResolver.setLocale(request, 
				response, 
				locale);
		return "WEB-INF\\views\\login\\login.jsp";
	}
	@RequestMapping(params="method=chatting")
	public String chatting() {

		return "WEB-INF\\views\\main\\chatting.jsp";
	}	
	
	
	
	/*
	@Autowired
	private A03_mail_service mservice;
	// http://localhost:6080/prj03/pmslogin.do?method=findpass
	@RequestMapping(params="method=insert",method= {RequestMethod.GET,RequestMethod.POST})
	public String insertMem(Emp1 insert,Emp1 ms, Model d) {
		if(insert.getEname()!=null) {
			service.insertMem(insert);
			d.addAttribute("proc","insert");
			Mail m=new Mail();
			m.setSubject("[Premium Solution] 임시 비밀번호입니다.");
			m.setReceiver(insert.getMail());
			m.setContent("<div align='center' style='border:1px solid black;>");
			m.setContent("<h3 style='color:blue;'>");
			m.setContent("<div style='font-size:130%'>");
			m.setContent("로그인 후 비밀번호를 변경해주세요.</div><br/>");
			m.setContent("<input type='hidden' name='email' value='\"+emp.getMail()+\"'>");
			m.setSubject("Premium Solution 임시 비밀번호 입니다.");
			m.setContent("<div align='center' style='border:1px solid black; font-family:verdana'>");
			m.setContent("<h3 style='color: blue;'>");
			m.setContent(insert.getEname() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>");
			m.setContent("<p>임시 비밀번호 : ");
			m.setContent("</p></div>");
			// updatePassword(password,Mail);
			Service.sendMail(m);
			
		}
		return "WEB-INF\\views\\login\\findpass.jsp";
	}
	*/
	


}
