package Premium.A03_repository;



import java.util.ArrayList;

import org.apache.poi.ss.formula.functions.Rank;
import org.springframework.stereotype.Repository;

import Premium.vo.Dept1;
import Premium.vo.Emp1;
import Premium.vo.MaAreachart;
import Premium.vo.MaBarchart;
import Premium.vo.PmAreachart;
import Premium.vo.PmPieChart;
import Premium.vo.Power;
import Premium.vo.Pro_gress;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;
import Premium.vo.pmBarchart;





@Repository
public interface A01_PremiumDao {
	
	// 사원 전체 리스트
		public ArrayList<Emp1> empList(Emp1 em);
		
		public ArrayList<Emp1> empList2(Emp1 em);
		
		public ArrayList<Emp1> empList3(Emp1 em);
	// 프로젝트 사원 리스트 
		public ArrayList<Promember> promList(Promember prom);
	// 프로젝트 내용
		public ArrayList<Project> proList(Project pro);
		
		public ArrayList<Progress> getProg2(Progress prog);
		
		public ArrayList<Dept1> deptlist(Dept1 dept);
		
		public ArrayList<Rank> ranklist(Rank ra);
		
		public ArrayList<Power> powerlist(Power po);
	// 사원등록
		public void insertMem(Emp1 insert);
		//public Emp1 getMem(Emp1 insert);
	// 방금 등록한 empno	
		public int curEmpno();
	// 프로젝트 등록
		public void insertPro(Project insert);
	// 프로젝트에 사원 등록
		public void insertProm(Promember insert);
	// 프로젝트에 등록된 사원 삭제
		public void deleteProm(Promember del);	
	// 더블클릭으로 프로젝트정보 가져오기
		public Project getPro(int prono);
	// 프로젝트리스트 수정
		public void updatePro(Project upt);	
	// 프로젝트리스트 삭제	
		public void deletePro(int prono);	
	// 더블클릭으로 사원정보 가져오기
		public Emp1 getEmp1(int empno);
	// 사원리스트 수정
		public void updateEmp1(Emp1 upt);	
	// 사원리스트 삭제	
		public void deleteEmp1(int empno);	
	// 메일보내기
		public void mailEmp(Emp1 ms);
		
		
	// 차트	
	// 메인 Area 차트
		public ArrayList<MaAreachart> mac(MaAreachart mc);
		
		public ArrayList<String> getLabels();
		
		public ArrayList<Integer> getDatas();
	// 메인 Bar 차트
		public ArrayList<MaBarchart> mbc(MaBarchart mb);
		
		public ArrayList<String> getLabels2();
		
		public ArrayList<Integer> getDatas2();
	// pm Area 차트
		public ArrayList<PmAreachart> pac(PmAreachart pa);
		
		public ArrayList<String> getLabels3();
		
		public ArrayList<Integer> getDatas3();
	// pm pie 차트
		public ArrayList<PmPieChart> pbc(PmPieChart pb);
		
		public ArrayList<String> getLabels4();
		
		public ArrayList<Integer> getDatas4();
	// 프로젝트 Bar 차트
		public ArrayList<pmBarchart> pro_bar(pmBarchart pbcc);
		
		public ArrayList<String> getLabels5();
		
		public ArrayList<Integer> getDatas5();
	

		
	// 업무 현황
		public ArrayList<Pro_gress> pro_gre_List(Pro_gress pgr);
	

}
