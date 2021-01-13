package Premium.A02_service;



import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import Premium.A03_repository.A01_PremiumDao;
import Premium.vo.Emp1;
import Premium.vo.Mail;


@Service
public class A03_mail_service {
	@Autowired
	private A01_PremiumDao dao;
	// 컨테이너에 있는 메일 전송 객체 호출.
	@Autowired
	private JavaMailSender sender;
	// 메일 전송 메서드 선언.
	public void sendMail(Emp1 ms) {
		// dao.단에서 1명의 조회해서 수신자와 내용 정보를 불러서..
		// email.setReceiver(receiver);
		// email.setContent(content);
		System.out.println("방금 등록한 empno:"+dao.curEmpno());
		System.out.println("메일 주소:"+ms.getMail());
		Mail m = new Mail();
		m.setSubject("[Premium Solution] 사원번호와 임시 비밀번호 입니다."); 
		// 메일제목
		m.setReceiver(ms.getMail()); // 메일주소
		m.setContent
		("안녕하세요 Premium Solution 입니다 \n"
		+ms.getEname()+"님 입사를 환영합니다.\n 귀하의 정보입니다 \n 사원번호:"+
		dao.curEmpno()+"\n비밀번호:"+dao.getEmp1(dao.curEmpno()).getPass()+"\n감사합니다"); //내용
				
		
		// 1. 메일 내용 전송을 위한 MimeMessage객체 생성.
		MimeMessage msg = sender.createMimeMessage();
		// 2. 제목 설정.
		try {
			msg.setSubject(m.getSubject());
		// 3. 수신자 설정.
			msg.setRecipient(RecipientType.TO, new InternetAddress(m.getReceiver()));
		// 4. 내용 설정.
			msg.setText(m.getContent());
		// 5. 발송 처리.
		sender.send(msg);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
	}
	public void sendMail2(Emp1 ms) {
		// dao.단에서 1명의 조회해서 수신자와 내용 정보를 불러서..
		// email.setReceiver(receiver);
		// email.setContent(content);
		System.out.println("메일 주소:"+ms.getMail());
		System.out.println("사원 번호:"+ms.getEmpno());
		Emp1 emp = dao.getEmp1(ms.getEmpno());
		Mail m = new Mail();
		System.out.println("바뀐 비밀번호:"+emp.getPass());
		m.setSubject("[Premium Solution] 임시 비밀번호 입니다."); 
		System.out.println("사원 번호"+emp.getEmpno());
		// 메일제목
		m.setReceiver(ms.getMail()); // 메일주소
		
		//m.setContent(ms.getEname()+" 님의 임시 비밀번호는 "+ms.getPass()+" 입니다. 비밀번호를 변경하여 사용하세요. \n\n");
		m.setContent
		("안녕하세요 Premium Solution 입니다 \n"
		+emp.getEname()+"님 의 비밀번호가 변경되었습니다."+
		"\n비밀번호:"+emp.getPass()+"\n입니다"); //내용
				// + dao.getEmp1(ms.getPass()));
		/*
		m.setContent("<div align='center' style='border:1px solid black;>");
		m.setContent("<h3 style='color:blue;'>");
		m.setContent("<div style='font-size:130%'>");
		m.setContent("로그인 후 비밀번호를 변경해주세요.</div><br/>");
		m.setContent("<input type='hidden' name='email' value='\"+emp.getMail()+\"'>");
		m.setSubject("Premium Solution 임시 비밀번호 입니다.");
		m.setContent("<div align='center' style='border:1px solid black; font-family:verdana'>");
		m.setContent("<h3 style='color: blue;'>");
		m.setContent(ms.getEname() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>");
		m.setContent("<p>임시 비밀번호 : ");
		m.setContent(ms.getEmpno()+dao.curEmpno().getPass()+"</p></div>");  //내용
		*/
		
		// 1. 메일 내용 전송을 위한 MimeMessage객체 생성.
		MimeMessage msg = sender.createMimeMessage();
		// 2. 제목 설정.
		try {
			msg.setSubject(m.getSubject());
			// 3. 수신자 설정.
			msg.setRecipient(RecipientType.TO, new InternetAddress(m.getReceiver()));
			// 4. 내용 설정.
			msg.setText(m.getContent());
			// 5. 발송 처리.
			sender.send(msg);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
	}

	/*
	public void sendMail(Mail email) {
		MimeMessage msg=sender.createMimeMessage();
		try {
			msg.setSubject(email.getSubject());
			// 수신자 설정 (inputPassword에 입력한 메일로 발송)
			msg.setRecipient(RecipientType.TO,new InternetAddress(email.getReceiver()));
			// 내용 설정 (임시비밀번호)
			msg.setText(email.getContent());
			
		sender.send(msg);
		
		}catch (MessagingException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
	
	public void sendMail(Emp1 emp, String div) throws Exception{
		
		String subject="";
		String msg="";
		
		if(div.equals("password")) {
			subject="Premium Solution 임시 비밀번호입니다.";
			msg+="<div align='center' style='border:1px solid black;>";
			msg+="<h3 style='color:blue;'>";
			msg+=emp.getEname()+"님의 임시 비밀번호</h3>";
			msg+="<div style='font-size:130%'>";
			msg+="로그인 후 비밀번호를 변경해주세요.</div><br/>";
			msg+="<input type='hidden' name='email' value='"+emp.getMail()+"'>";
			subject = "Premium Solution 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += emp.getEname() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += emp.getPass() + "</p></div>";
		}
	}
	public void get_pass(HttpServletResponse response, Emp1 emp) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		if(!emp.getMail().equals(emp.getMail())) {
			out.print("잘못된 이메일입니다.");
			out.close();
		}else {
			String password="";
			for(int i=0;i<12;i++) {
				password+=(char) ((Math.random()*26)+97);
			}
			emp.setPass(password);
			sendMail(emp,"find_pw");
			
			out.print("이메일로 임시 비밀번호를 발송했습니다.");
			out.close();
		}
	} */
}	
