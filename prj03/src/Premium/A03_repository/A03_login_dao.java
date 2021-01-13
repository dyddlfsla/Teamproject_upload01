package Premium.A03_repository;

import org.springframework.stereotype.Repository;

import Premium.vo.Emp1;

@Repository
public interface A03_login_dao {
	
	public Emp1 empLogin(Emp1 emp) ;
	
	public void updatepass(Emp1 upt);
	
	public void updatepass2(Emp1 ms);
	
	public Emp1 mailEmp(Emp1 ms);	
	
}
