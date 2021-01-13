package Premium.A02_service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import Premium.vo.Mail;

@Service
public class A03_mail {
	@Autowired
	private JavaMailSender sender;
	public void sendMail(Mail email) {
		MimeMessage msg=sender.createMimeMessage();
		try {
			msg.setSubject(email.getSubject());
			msg.setRecipient(RecipientType.TO,new InternetAddress(email.getReceiver()));
			msg.setText(email.getContent());
			
			sender.send(msg);
		}catch (MessagingException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
}
