package Premium.A02_service;

import java.io.File;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Premium.A03_repository.A02_WorkDao;
import Premium.A03_repository.A04_RiskDao;
import Premium.vo.Progress;
import Premium.vo.Risk;
import Premium.vo.Work;

@Service
public class A04_RiskService {
	@Autowired
	private A04_RiskDao dao;
	
	public ArrayList<Risk> riskList(Risk ri){
		return dao.riskList(ri);
	}
	
	public ArrayList<Work> getWork(Work wo){
		return dao.getWork(wo);
	}
	
	public ArrayList<Progress> getProg(Progress prog) {
		return dao.getProg(prog);
	}
	
	public void insertRisk(Risk ins) {
		dao.insertRisk(ins);
	}
	
	public Risk getRisk(int riskno) {
		return dao.getRisk(riskno);
	}
	
	public void updateRisk(Risk upt) {
		dao.updateRisk(upt);
	}
	public void updateRisk2(int workno) {
		dao.updateRisk2(workno);
	}
	
	public void updateRisk3(int workno) {
		dao.updateRisk3(workno);
	}
	
	
	public void deleteRisk(int riskno) {
		dao.deleteRisk(riskno);
	}
	public Work getWork2(int empno) {
		return dao.getWork2(empno);
	}
	
	
}
 