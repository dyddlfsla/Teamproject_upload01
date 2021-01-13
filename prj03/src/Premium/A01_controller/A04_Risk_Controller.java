package Premium.A01_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Premium.A02_service.A04_RiskService;
import Premium.vo.Emp1;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;
import Premium.vo.Risk;
import Premium.vo.Work;

@Controller
@RequestMapping("/risk.do")
public class A04_Risk_Controller {

	@Autowired
	private A04_RiskService service;
	// http://localhost:7080/prj03/risk.do?method=list	
	@RequestMapping(params="method=list" ,method = {RequestMethod.GET, 
            RequestMethod.POST})
	public String riskList(Risk ri, Model d, HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Emp1 emp1 = (Emp1)session.getAttribute("sessEmp");
		if(emp1==null) {
			System.out.println("뭐야 이건");
			//return "redirect:pmslogin.do?method=pmslogin";
			return "redirect:work.do?method=popup";
		}
		System.out.println(emp1.getEmpno());
		ri.setEmpno(emp1.getEmpno());
		d.addAttribute("riskList",service.riskList(ri));
		return "WEB-INF\\views\\risk\\RiskList.jsp";
		
	}
	
	// http://localhost:7080/prj03/risk.do?method=insert
		@RequestMapping(params = "method=insert",method = {RequestMethod.GET, 
	            RequestMethod.POST})
		public String riskinsert(Risk ins, Work wo, Model d,HttpServletRequest request) {
			HttpSession session = request.getSession();
			Emp1 emp1 = (Emp1)session.getAttribute("sessEmp");
			System.out.println("#사원 번호1:"+emp1.getEmpno());
			wo.setEmpno(emp1.getEmpno());
			System.out.println("#사원 번호2:"+wo.getEmpno());
			wo.setMgr(emp1.getEmpno());
		//	d.addAttribute("workList",service.WorkList(ins));
		//	System.out.println("#사이즈:"+service.WorkList(ins).size());
			d.addAttribute("wlist", service.getWork(wo));
			System.out.println("#사이즈2:"+service.getWork(wo).size());
			//if(ins.getWorktitle()!=null&&ins.getWorkcontent()!=null) {
			if(ins.getRititle()!=null&&!ins.getRititle().equals("")) {
				if(ins.getRcontent()!=null&&!ins.getRcontent().equals("")) {
					System.out.println("성공적으로 넘기기 시도!");
					service.insertRisk(ins);
					service.updateRisk2(wo.getWorkno());
					System.out.println("성공적으로 넘어옴!!");
					d.addAttribute("proc", "insert");
				}
			}
			// 모델 선언.. 
			// 1. 프로젝트
			//  d.addAttribute("plist", service.XXXX(@@@));
			// 2. 담당자 리스트 
			//  d.addAttribute("mlist", service.XXXX(@@@));
					
			return "WEB-INF\\views\\risk\\insertrisk.jsp";
		}
		
	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("riskno") int riskno, Progress prog, HttpServletRequest request,
			Model d) {
	//	HttpSession session = request.getSession();
	//	Emp1 emp1 = (Emp1)session.getAttribute("sessEmp");
	//	wo.setEmpno(emp1.getEmpno());
	//	System.out.println("#사원 번호1:"+wo.getEmpno());
	//	d.addAttribute("wlist", service.getWork(wo));
	//	System.out.println("#사원 번호2:"+wo.getEmpno());
		d.addAttribute("risk", service.getRisk(riskno));
		System.out.println("리스크값 넣기 성공!");
		prog.setProgress(service.getRisk(riskno).getProgress());
		d.addAttribute("proglist", service.getProg(prog));
	//	d.addAttribute("wlist", service.getWork2(workno));
	//	System.out.println("상세화면 :"+riskno);
	//	d.addAttribute("work", service.getWork(workno));
	//	prog.setProgress(service.getWork(workno).getProgress());
	//	System.out.println("현재 진행"+service.getWork(workno).getProgress());
	//	d.addAttribute("proglist", service.getProg(prog));
	//	System.out.println("#프로젝트 번호 1:"+service.getWork(workno).getProno());
		return "WEB-INF\\views\\risk\\detailrisk.jsp";
	}
	
	
	@RequestMapping(params="method=update")
	public String update(Risk upt, Model d) {
		System.out.println("수정 처리:"+upt.getRiskno());
		d.addAttribute("proc", "upt");
		System.out.println("수정처리1");
		System.out.println(upt.getRcontent());
		System.out.println(upt.getProgress());
		System.out.println(upt.getProgper());
		System.out.println(upt.getWorkno());
		service.updateRisk(upt);
		System.out.println("수정처리2");
		d.addAttribute("risk", service.getRisk(upt.getRiskno()));
		System.out.println(upt.getProgress());
		if(upt.getProgress()==4) {
			System.out.println("완료 처리 시작!");
			System.out.println(upt.getWorkno());
			service.updateRisk3(upt.getWorkno());
		}
		System.out.println("수정처리3");
		return "WEB-INF\\views\\risk\\detailrisk.jsp";
	}
	
	
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("riskno") int riskno, Model d) {
		System.out.println("삭제 처리:"+riskno);
		d.addAttribute("proc", "del");
		System.out.println("삭제완료!");
		service.deleteRisk(riskno);
		return "WEB-INF\\views\\risk\\detailrisk.jsp";
	}
	
	@RequestMapping(params="method=download")
	public String download(@RequestParam("filename") 
							String filename, Model d) {
		System.out.println("다운로드할 파일명:"+filename);
		d.addAttribute("downloadFile",filename);
		return "download"; // 컨테이너에서 선언한 viewer를 호출..
		
	}


}
