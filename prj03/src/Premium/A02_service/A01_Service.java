package Premium.A02_service;



import java.util.ArrayList;

import org.apache.poi.ss.formula.functions.Rank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Premium.A03_repository.A01_PremiumDao;
import Premium.vo.AreaChart;
import Premium.vo.BarChart;
import Premium.vo.BarChart_pm;
import Premium.vo.Dept1;
import Premium.vo.Emp1;
import Premium.vo.MaAreachart;
import Premium.vo.MaBarchart;
import Premium.vo.PAreaChart;
import Premium.vo.PieChart;
import Premium.vo.PmAreachart;
import Premium.vo.PmPieChart;
import Premium.vo.Power;
import Premium.vo.Pro_gress;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;
import Premium.vo.pmBarchart;




@Service
public class A01_Service {
	@Autowired
	private A01_PremiumDao dao;
	
	
	// 사원관리
	public ArrayList<Emp1> EmpList(Emp1 em){ 
		return dao.empList(em);
	}
	public ArrayList<Emp1> EmpList2(Emp1 em){ 
		return dao.empList2(em);
	}
	public ArrayList<Emp1> EmpList3(Emp1 em){ 
		return dao.empList3(em);
	}
	public ArrayList<Progress> getProg2(Progress prog){
		return dao.getProg2(prog);
	}
	public ArrayList<Dept1> deptlist(Dept1 dept){
		return dao.deptlist(dept);
	}
	
	public ArrayList<Rank> ranklist(Rank ra){
		return dao.ranklist(ra);
	}
	
	public ArrayList<Power> powerlist(Power po){
		return dao.powerlist(po);
	}
	
	
	// 사원 등록
	public void insertMem(Emp1 insert) { 
		dao.insertMem(insert);
	}
	public Emp1 getEmp1(int empno) {
		return dao.getEmp1(empno);
	}
	// 사원 수정
	public void updateEmp1(Emp1 upt) {
		dao.updateEmp1(upt);
	}
	// 사원 삭제
	public void deleteEmp1(int empno) {
		dao.deleteEmp1(empno);
	}
	// 프로젝트 관리
	public ArrayList<Promember> PromList(Promember prom){ 
		
		return dao.promList(prom);
	}	
	// 프로젝트 상세화면
	public ArrayList<Project> proList(Project pro){ 
		return dao.proList(pro);
	}
	// 프로젝트 등록
	public void insertPro(Project insert) { 
			dao.insertPro(insert);
	}
	// 프로젝트에 사원 등록
	public void insertProm(Promember insert) { 
				dao.insertProm(insert);
		}
	public void deleteProm(Promember del) {
			dao.deleteProm(del);
	}
	// 프로젝트 클릭
	public Project getPro(int prono) {
			return dao.getPro(prono);
		}
	// 프로젝트 수정
	public void updatePro(Project upt) {
			dao.updatePro(upt);
		}
	// 프로젝트 삭제
	public void deletePro(int prono) {
			dao.deletePro(prono);
		}
	// 메일보내기
	public void mailEmp(Emp1 ms) { 
		 dao.mailEmp(ms);
	}

	
	// 차트
	// 메인 Area 차트
	public ArrayList<MaAreachart> mac(MaAreachart mc){ 
		return dao.mac(mc);
	}
	public AreaChart getAreaChart() {
		AreaChart data = new AreaChart();
		data.setlabels(dao.getLabels());
		data.setDatas(dao.getDatas());
		return data;
	}
	// 메인 Bar 차트
	public ArrayList<MaBarchart> mbc(MaBarchart mb){ 
		return dao.mbc(mb);
	}
	public BarChart getBarChart() { 
		BarChart data = new BarChart();
		data.setlabels(dao.getLabels2());
		data.setDatas(dao.getDatas2());
		return data;
	}
	// Pm Area 차트
	public ArrayList<PmAreachart> pac(PmAreachart pa){ 
		return dao.pac(pa);
	}
	public PAreaChart getPareachart() { 
		PAreaChart data = new PAreaChart();
		data.setlabels(dao.getLabels3());
		data.setDatas(dao.getDatas3());
		return data; 
	}
	// pie 차트
	public ArrayList<PmPieChart> pbc(PmPieChart pb){ 
		return dao.pbc(pb);
	}
	public PieChart getpiechart() { 
		PieChart data = new PieChart();
		data.setlabels(dao.getLabels4());
		data.setDatas(dao.getDatas4());
		return data;
	}
	// bar 차트트
	public ArrayList<pmBarchart> pro_bar(pmBarchart pbcc){ 
		return dao.pro_bar(pbcc);
	}
	
	public BarChart_pm getBar_pmchart() { 
		BarChart_pm data = new BarChart_pm();
		data.setlabels(dao.getLabels5());
		data.setDatas(dao.getDatas5());
		return data;
	}

	//업무현황
	public ArrayList<Pro_gress> pro_gre_List(Pro_gress pgr){ 
		return dao.pro_gre_List(pgr);
	}

	
	
}