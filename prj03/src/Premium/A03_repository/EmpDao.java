package Premium.A03_repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import Premium.vo.Emp;

@Repository
public interface EmpDao {
	

	public ArrayList<Emp> getEmplist(Emp sch);
}
