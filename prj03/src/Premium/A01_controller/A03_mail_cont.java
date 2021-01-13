package Premium.A01_controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Premium.A02_service.A03_login_service;
import Premium.A02_service.A03_mail_service;
import Premium.vo.Emp1;
import Premium.vo.Mail;

@Controller
@RequestMapping("/mail.do")
public class A03_mail_cont {
	@Autowired
	private A03_mail_service service;
	@Autowired
	private A03_login_service Service;
	// http://localhost:6080/prj03/pmslogin.do?method=findpass
	@RequestMapping(params="method=sendmail",method= {RequestMethod.GET,RequestMethod.POST})
	public String sendMail2(Emp1 ms, Model d) {
		Service.updatePass2(ms);
		System.out.println("비밀번호 변경 완료!");
		service.sendMail2(ms);
		System.out.println("# 이메일 발송");
		
		//System.out.println("비밀번호 변경 완료!!"+ms.getEmpno());
		//Service.getEmp2(ms.getEmpno());
		//d.addAttribute(Service.getEmp2(ms.getEmpno()));
		
		d.addAttribute("proc", "upt");
		
		return "WEB-INF\\views\\login\\findpass.jsp";
	}
	/*
	public class newpass{
		public static String newpass(int length) {
			int index=0;
			char[] charSet=new char[] {
				'0','1','2','3','4','5','6','7','8','9',
				'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
			};
			StringBuffer sb=new StringBuffer();
			for(int i=0;i<length;i++) {
				index=(int) (charSet.length*Math.random());
				sb.append(charSet[index]);
			}
			return sb.toString();
		}
		public static void main(String[] args) {
			String password=randomPassword(10);
			System.out.println("임시비밀번호: "+password);
		}
	}
	*/
	
}
