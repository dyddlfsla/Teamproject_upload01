package Premium.A01_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import Premium.A02_service.A01_Service;
import Premium.A02_service.A02_Service;
import Premium.vo.Emp1;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;
import Premium.vo.Work;

@Controller
@RequestMapping("/work.do")
public class A02_Work_Controller {
	@Autowired
	private A02_Service service;
	private A01_Service proservice;
	// 처음화면
	// http://localhost:7080/prj03/work.do?method=work	
	@RequestMapping(params="method=work" ,method = {RequestMethod.GET, 
            RequestMethod.POST})
	public String workList(Work wo, Model d, HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Emp1 emp1 = (Emp1)session.getAttribute("sessEmp");
		if(emp1==null) {
			System.out.println("뭐야 이건");
			//return "redirect:pmslogin.do?method=pmslogin";
			return "redirect:work.do?method=popup";
		}
		System.out.println(emp1.getEmpno());
		wo.setEmpno(emp1.getEmpno());
		d.addAttribute("workList",service.WorkList(wo));
		return "WEB-INF\\views\\Work\\WorkList.jsp";
		
	}
	// Gantt Chart
	// http://localhost:7080/prj03/work.do?method=gantt	
	@RequestMapping(params="method=gantt")
	public String gantt(Project pro,Model d) {
		Gson gson = new Gson();
		
		d.addAttribute("gantt",gson.toJson(service.Glist()));
		d.addAttribute("project_List",service.project_list());
		return "WEB-INF\\views\\Work\\WorkGantt.jsp";
	}
	// Gantt Chart selete시 해당 프로젝트의 업무만
	@RequestMapping(params="method=ganttAjax")
	public String gantt_List(@RequestParam("prono") int prono, Model d){
		d.addAttribute("gantt",service.gantt_List(prono));
		return "pageJsonReport";
	}
	
	// 캘린더 화면
	// http://localhost:7080/prj03/work.do?method=list
	@RequestMapping(params="method=list")
	public String calenderList() {
		
		return "WEB-INF\\views\\Work\\WorkCalender.jsp";
	}
	
	@RequestMapping(params="method=popup")
	public String calenderpopup() {
		
		return "WEB-INF\\views\\Work\\popup.jsp";
	}
	
	// 캘린더 데이터
	// http://localhost:7080/prj03/work.do?method=data
	@RequestMapping(params="method=data")
	public String calenderData(Model d) {
		d.addAttribute("WorkList",service.getCal());
		return "pageJsonReport";
	}

	// http://localhost:7080/prj03/work.do?method=insert
	@RequestMapping(params = "method=insert",method = {RequestMethod.GET, 
            RequestMethod.POST})
	public String workinsert(Work ins, Project pro, Promember prom, Model d,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Emp1 emp1 = (Emp1)session.getAttribute("sessEmp");
		System.out.println("#사원 번호1:"+emp1.getEmpno());
		pro.setEmpno(emp1.getEmpno());
		System.out.println("#사원 번호2:"+pro.getEmpno());
		ins.setMgr(emp1.getEmpno());
		d.addAttribute("workList",service.WorkList(ins));
		System.out.println("#사이즈:"+service.WorkList(ins).size());
		d.addAttribute("plist", service.getPro(pro));
		System.out.println("#사이즈2:"+service.getPro(pro).size());
		prom.setProno(pro.getProno());
		System.out.println("#프로젝트 번호 1:"+pro.getProno());
		d.addAttribute("pmlist", service.getProm(prom));
		System.out.println("업무제목:"+ins.getWorktitle());
		System.out.println("업무내용:"+ins.getWorkcontent());
		//if(ins.getWorktitle()!=null&&ins.getWorkcontent()!=null) {
		if(ins.getWorktitle()!=null&&!ins.getWorktitle().equals("")) {
			if(ins.getWorkcontent()!=null&&!ins.getWorkcontent().equals("")) {
				service.insertWork(ins);
				d.addAttribute("proc", "insert");
			}
		}
		
		// 모델 선언.. 
		// 1. 프로젝트
		//  d.addAttribute("plist", service.XXXX(@@@));
		// 2. 담당자 리스트 
		//  d.addAttribute("mlist", service.XXXX(@@@));
				
		return "WEB-INF\\views\\Work\\insertWork.jsp";
	}
	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("workno") int workno, Promember prom, Progress prog, HttpServletRequest request,
			Model d) {
		HttpSession session = request.getSession();
		Emp1 emp1 = (Emp1)session.getAttribute("sessEmp");
		System.out.println("상세화면 :"+workno);
		d.addAttribute("work", service.getWork(workno));
		prom.setProno(service.getWork(workno).getProno());
		d.addAttribute("pmlist", service.getProm(prom));
		prog.setUser2(emp1.getPowerno());
		System.out.println("현재 권한값"+prog.getUser2());
		prog.setProgress(service.getWork(workno).getProgress());
		System.out.println("현재 진행"+service.getWork(workno).getProgress());
		d.addAttribute("proglist", service.getProg(prog));
		System.out.println("#프로젝트 번호 1:"+service.getWork(workno).getProno());
		return "WEB-INF\\views\\Work\\detailWork.jsp";
	}
	@RequestMapping(params="method=update")
	public String update(Work upt, Model d) {
		System.out.println("수정 처리:"+upt.getWorkno());
		d.addAttribute("proc", "upt");
		System.out.println("수정완료!");
		service.updateWork(upt);
		d.addAttribute("work", service.getWork(upt.getWorkno()));
		return "WEB-INF\\views\\Work\\detailWork.jsp";
	}
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("workno") int workno, Model d) {
		System.out.println("삭제 처리:"+workno);
		d.addAttribute("proc", "del");
		System.out.println("삭제완료!");
		service.deleteWork(workno);
		return "WEB-INF\\views\\Work\\detailWork.jsp";
	}
	
	@RequestMapping(params="method=download")
	public String download(@RequestParam("filename") 
							String filename, Model d) {
		System.out.println("다운로드할 파일명:"+filename);
		d.addAttribute("downloadFile",filename);
		return "download"; // 컨테이너에서 선언한 viewer를 호출..
		
	}

	
	

	 
}
