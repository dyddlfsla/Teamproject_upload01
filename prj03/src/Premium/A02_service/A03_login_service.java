package Premium.A02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Premium.A03_repository.A03_login_dao;
import Premium.vo.Emp1;
import Premium.vo.Work;

@Service 
public class A03_login_service {
	@Autowired
	private A03_login_dao dao;
	public Emp1 empLogin(Emp1 emp) {
		return dao.empLogin(emp);
	}
	public void updatePass(Emp1 upt) {
		dao.updatepass(upt);
	}
	public void updatePass2(Emp1 ms) {
		dao.updatepass2(ms);
	}
	public void mailEmp(Emp1 ms) { 
		 dao.mailEmp(ms);
	}
	public void sendMail(Emp1 insert) {
		dao.mailEmp(insert);
		
	}

}
