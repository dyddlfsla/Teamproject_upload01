package Premium.A02_service;



import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Premium.A03_repository.A01_PremiumDao;
import Premium.A03_repository.A02_WorkDao;
import Premium.vo.Emp1;
import Premium.vo.Gantt;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;
import Premium.vo.Work;


@Service
public class A02_Service {  
	@Autowired
	private A02_WorkDao dao;
	
	public ArrayList<Work> WorkList(Work wo){
		return dao.workList(wo);
	}
	public ArrayList<Work> getList(){
		return dao.getList();
	}
	public ArrayList<Calendar> getCal(){
		return dao.getCal();
	}
	
	public void insertWork(Work ins) {
		dao.insertWork(ins);
	}
	public Work getWork(int workno) {
		Work d = dao.getWork(workno);
		d.setFilename(dao.Workfile(workno));
		return d;
	}
	
	public ArrayList<Progress> getProg(Progress prog) {
		return dao.getProg(prog);
	}
	public ArrayList<Project> getPro(Project pro) {
		return dao.getPro(pro);
	}
	public ArrayList<Promember> getProm(Promember prom) {
		return dao.getProm(prom);
	}

	/*
	public Work getDetWork(int workno) {
		dao.getWork(workno);
		Work d = dao.getWork(workno);
		d.setFilename(dao.Workfile(workno));
		return d;
	}
	*/

	public void updateWork(Work upt) {
		dao.updateWork(upt);
		if(upt.getReport()!=null&&upt.getReport().length>0) {
			//System.out.println("클라이언트에서 서버에 온 파일");
			for(MultipartFile file:upt.getReport()) {
				//System.out.println("파일명:"+file.getOriginalFilename());
				upload(file,upt.getWorkno());
			}
			System.out.println("# 파일 업로드 완료");
		}	
	}
	public void deleteWork(int workno) {
		dao.deleteWork(workno);
	}
	
	
	@Value("${upload}")
	private String upload;
	// 임시업로드 위치..
	@Value("${tmpUpload}")
	private String tmpUpload;	
	// 1. MultipartFile ==> File 변환해서 특정 위치에 저장..
	// 2. 임시 파일에 있는 내용을 업로드가능한 폴드에 copy
	private void upload(MultipartFile mtf, int workno) {
		String fileName2 = mtf.getOriginalFilename();
		// 첨부 파일이 있을 때만 처리.
		if(fileName2!=null&&!fileName2.equals("")) {
			dao.insertWorkfile(workno,fileName2);
			// 1. 파일 객체 선언.
			File tmpFile = new File(tmpUpload+fileName2);
			// 기존에 동일한 파일명으로 파일이 있으면 삭제
			if(tmpFile.exists()) tmpFile.delete();
			// 2. 파일 객체로 전환..(io가 일어 난다) 필수 예외처리.
			try {
				mtf.transferTo(tmpFile);
			// 3. 실제 다운로드할 파일 위치와 파일객체 생성.
				File orgFile = new File(upload+fileName2);
			// 4. 임시 위치에서 실제 위치로 복사 처리..
				Files.copy(tmpFile.toPath(), orgFile.toPath(),
							StandardCopyOption.REPLACE_EXISTING);
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	}
	// Gantt Chart
	public ArrayList<Gantt> Glist () {
		return dao.Glist();
	}
	
	
	
	// 추가 내용
	public ArrayList<Project> project_list(){
		return dao.project_List();
	}

	public ArrayList<Gantt> gantt_List(int prono){
		return dao.gantt_List(prono);
	}
}
