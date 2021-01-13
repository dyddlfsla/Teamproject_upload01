package Premium.A03_repository;



import java.util.ArrayList;
import java.util.Calendar;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import Premium.vo.Gantt;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;
import Premium.vo.Work;




@Repository
public interface A02_WorkDao {  
	
	
	// 업무 전체 리스트
	public ArrayList<Work> workList(Work wo);
	
	public ArrayList<Work> getList();
	
	// 업무 생성
	public void insertWork(Work ins);
	
	public Work getWork(int workno);
	
	public ArrayList<Project> getPro(Project pro);

	public ArrayList<Promember> getProm(Promember prom);
	
	public ArrayList<Progress> getProg(Progress prog);
	
	public ArrayList<Calendar> getCal();
	
	public void updateWork(Work upt);	
	
	public void deleteWork(int workno);	
	// 업무 수정
	
	// 파일 정보 입력 메소드  
		public void insertWorkfile(@Param("workno") int workno, @Param("filename") String fname);
		
	// 등록된 파일을 가져오는 메소드	
		public ArrayList<String> Workfile(int workno);	
		
	// Gantt Chart
		public ArrayList<Gantt> Glist();
		
		
	// 추가 내용
		
	public ArrayList<Project> project_List();
	public ArrayList<Gantt> gantt_List(int prono);
}
