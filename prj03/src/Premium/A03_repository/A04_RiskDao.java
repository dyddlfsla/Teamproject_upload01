package Premium.A03_repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Risk;
import Premium.vo.Work;

@Repository
public interface A04_RiskDao {
	
	public ArrayList<Risk> riskList(Risk ri);
	
	public ArrayList<Work> getWork(Work wo);
	
	public ArrayList<Progress> getProg(Progress prog);
	
	public void insertRisk(Risk ins);
	
	public Risk getRisk(int riskno);
	
	public void updateRisk(Risk upt);	
	
	public void updateRisk2(int workno);
	
	public void updateRisk3(int workno);
	
	public void deleteRisk(int riskno);	

	public Work getWork2(int empno);
	
	
}

