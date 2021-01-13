package Premium.A01_controller;

import org.apache.poi.ss.formula.functions.Rank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Premium.A02_service.A01_Service;
import Premium.A02_service.A03_mail_service;
import Premium.vo.Dept1;
import Premium.vo.Emp1;
import Premium.vo.MaAreachart;
import Premium.vo.Power;
import Premium.vo.Pro_gress;
import Premium.vo.Progress;
import Premium.vo.Project;
import Premium.vo.Promember;


@Controller
@RequestMapping("/ps.do")
public class A01_Pro_mem_Controller {
	@Autowired(required = false)
	private A01_Service service;
	// 메인화면
	// http://localhost:7080/prj03/ps.do?method=main
	@RequestMapping(params="method=main")
	public String pmsMain(MaAreachart mc, Pro_gress pgr, Model d) {
		d.addAttribute("plist", service.proList(null));
		d.addAttribute("prg", service.pro_gre_List(pgr));
		return "WEB-INF\\views\\main\\main.jsp";
	}
	// 메인화면 Area차트 데이터
	// http://localhost:7080/prj03/ps.do?method=areaChart
	@RequestMapping(params="method=areaChart")
	public String maAreaChart(Model d) {
		d.addAttribute("areachart", service.getAreaChart());
		return "pageJsonReport";
	}	
	// 메인화면 Bar차트 데이터
	// http://localhost:7080/prj03/ps.do?method=barChart
	@RequestMapping(params="method=barChart")
	public String maBarChart(Model d) {
		d.addAttribute("barchart", service.getBarChart());
		return "pageJsonReport";
	}
	// 프로젝트 CEO bar chart
	// http://localhost:7080/prj03/ps.do?method=bar_pmChart
	@RequestMapping(params="method=bar_pmChart")
	public String pro_barChart(Model d) { 
		d.addAttribute("pm_barchart", service.getBar_pmchart());
		return "pageJsonReport";
	}

	// 프로젝트 클릭시
	@RequestMapping(params="method=detail2")
	public String detail2(@RequestParam("prono") int prono, Emp1 em, Progress prog,
			Model d) {
		d.addAttribute("elist", service.EmpList2(em));
		prog.setProgress(service.getPro(prono).getProgress());
		d.addAttribute("proglist", service.getProg2(prog));
		System.out.println("진행상태"+prog.getProgress());
		System.out.println("진행상태"+prog.getProgcontent());
		System.out.println("상세화면 :"+prono);
		d.addAttribute("pro", service.getPro(prono));
		return "WEB-INF\\views\\main\\Project_detail.jsp";
	}
	//프로젝트 정보 수정
	@RequestMapping(params="method=update2")
	public String update2(Project upt, Model d) {
		System.out.println("수정 처리:"+upt.getProno());
		d.addAttribute("proc", "upt");
		System.out.println("수정완료!");
		service.updatePro(upt);
		d.addAttribute("pro", service.getPro(upt.getProno()));
		return "WEB-INF\\views\\main\\Project_detail.jsp";
	}
	//프로젝트 정보 삭제
	@RequestMapping(params="method=delete2")
	public String delete2(@RequestParam("prono") int prono, Model d) {
		System.out.println("삭제 처리:"+prono);
		d.addAttribute("proc", "del");
		System.out.println("삭제완료!");
		service.deletePro(prono);
		return "WEB-INF\\views\\main\\Project_detail.jsp";
	}

	// 프로젝트 상세 화면,등록
	// http://localhost:7080/prj03/ps.do?method=pro
	@RequestMapping(params="method=pro")
	public String promain(Project insert,Model d) {
		d.addAttribute("plist", service.proList(insert));
		if(insert.getEname()!=null) { 
			service.insertPro(insert);
			d.addAttribute("proc", "insert");
		}
		return "WEB-INF\\views\\main\\Project_admin.jsp";
	}
	// 프로젝트 등록
	// http://localhost:7080/prj03/ps.do?method=pro2
	@RequestMapping(params="method=pro2",method = {RequestMethod.GET, 
            RequestMethod.POST})
	public String promain2(Project insert, Emp1 em, Model d) {
		d.addAttribute("plist", service.proList(insert));
		d.addAttribute("elist", service.EmpList2(em));
		if(insert.getProtitle()!=null) { 
			service.insertPro(insert);
			d.addAttribute("proc", "insert");
		}
		return "WEB-INF\\views\\main\\Project_insert.jsp";
	}
	// 프로젝트에 사원등록 리스트
	// http://localhost:7080/prj03/ps.do?method=promem
	@RequestMapping(params="method=promem")
	public String promem( Promember ins,Model d) {
		d.addAttribute("prono" ,ins.getProno());
		d.addAttribute("plist", service.PromList(ins));
		return "WEB-INF\\views\\main\\Project_promember.jsp";
	}
	//프로젝트 등록된 사원 삭제
	// http://localhost:7080/prj03/ps.do?method=delete4
	@RequestMapping(params="method=delete4")
	public String delete3(Promember del, Model d) {
		//System.out.println("삭제 처리 프로젝트 번호:"+prono);
		//System.out.println("삭제 처리 사원번호:"+empno);
		service.deleteProm(del);
		//d.addAttribute("proc", "dd");
		System.out.println("삭제완료!");
		return "redirect:ps.do?method=promem&prono="+del.getProno();
	}
	
	// 사원전체목록
	// http://localhost:7080/prj03/ps.do?method=mem
	@RequestMapping(params="method=mem")
	public String Emplist(Emp1 em,Model d) {
		System.out.println("화면호출");
		d.addAttribute("empList", service.EmpList(em));
		return "WEB-INF\\views\\main\\Member.jsp";
	}
	// 프로젝트 사원목록 pm
	// http://localhost:7080/prj03/ps.do?method=memlist1
	@RequestMapping(params="method=memlist1")
	public String Emplist1(Emp1 em,Model d) {
		System.out.println("화면호출");
		d.addAttribute("empList", service.EmpList(em));
		return "WEB-INF\\views\\main\\memlist1.jsp";
	}
	// 프로젝트 사원목록 사원
	// http://localhost:7080/prj03/ps.do?method=memlist2
	@RequestMapping(params="method=memlist2")
	public String Emplist2(@RequestParam("prono") int prono, Emp1 em,Model d) {
		System.out.println("화면호출");
		d.addAttribute("prono",prono);
		d.addAttribute("empList", service.EmpList3(em));
		return "WEB-INF\\views\\main\\memlist2.jsp";
	}
	// 프로젝트에 사원 등록
	// http://localhost:7080/prj03/ps.do?method=insert2
	@RequestMapping(params = "method=insert2",method = {RequestMethod.GET, 
			RequestMethod.POST})
	public String prominsert2(Promember insert, Model d) {
		if(insert.getEmpno()!=0) {
			service.insertProm(insert);
			d.addAttribute("proc", "insert");

		}
		return "pageJsonReport";
	}

	
	// 사원등록
	// http://localhost:7080/prj03/ps.do?method=insert
	/*
	 	private String subject;  // 제목
		private String receiver; // 수신자(받는사람)
		private String content;  // 내용
		private String regdate;  // 발송일
		private String password; // 비밀번호?
	 
	 */
	@Autowired
	private A03_mail_service mservice;
	@RequestMapping(params = "method=insert",method = {RequestMethod.GET, RequestMethod.POST})
	public String insertMem(Emp1 insert,Dept1 dept,Rank ra,Power po, Model d) { 
		d.addAttribute("plist", service.powerlist(po));		
		d.addAttribute("dlist", service.deptlist(dept));		
		d.addAttribute("rlist", service.ranklist(ra));		
		if(insert.getEname()!=null) { 
			System.out.println("#등록");
			service.insertMem(insert);
			d.addAttribute("proc", "insert");
			System.out.println("#등록된 empno확인");
			mservice.sendMail(insert);
			//System.out.println(insert.getSubject()); // 메일제목
			//System.out.println(insert.getReceiver()); // 메일주소
			//System.out.println(insert.getContent()); // 내용
		}
		return "WEB-INF\\views\\main\\insertMem.jsp";
	}
	// 사원 클릭시
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("empno") int empno, Dept1 dept,Rank ra,Power po,
			Model d) {
		System.out.println("상세화면 :"+empno);
		d.addAttribute("plist", service.powerlist(po));		
		d.addAttribute("dlist", service.deptlist(dept));		
		d.addAttribute("rlist", service.ranklist(ra));
		d.addAttribute("emp", service.getEmp1(empno));
		return "WEB-INF\\views\\main\\detailMem.jsp";
	}
	//사원정보 수정
	@RequestMapping(params="method=update")
	public String update(Emp1 upt, Model d) {
		System.out.println("수정 처리:"+upt.getEmpno());
		d.addAttribute("proc", "upt");
		System.out.println("수정완료!");
		service.updateEmp1(upt);
		d.addAttribute("emp", service.getEmp1(upt.getEmpno()));
		return "WEB-INF\\views\\main\\detailMem.jsp";
	}
	//사원정보 삭제
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("empno") int empno, Model d) {
		System.out.println("삭제 처리:"+empno);
		d.addAttribute("proc", "del");
		System.out.println("삭제완료!");
		service.deleteEmp1(empno);
		return "WEB-INF\\views\\main\\detailMem.jsp";
	}
	
	// P.M 대시보드
	// http://localhost:7080/prj03/ps.do?method=dashpm
	@RequestMapping(params="method=dashpm")
	public String dashPM() {
		return "WEB-INF\\views\\main\\dashpm.jsp";
	}
	// PM화면 Area차트 데이터
	// http://localhost:7080/prj03/ps.do?method=PmareaChart
	@RequestMapping(params="method=PmareaChart")
	public String pmAreaChart(Model d) {
		d.addAttribute("pareachart", service.getPareachart());
		return "pageJsonReport";
	}
	
	// pie차트 데이터
	// http://localhost:7080/prj03/ps.do?method=PmpieChart
	@RequestMapping(params="method=PmpieChart")
	public String PmPieChart(Model d) {
		d.addAttribute("pmpiechart", service.getpiechart());
		return "pageJsonReport";
	}



	
}

