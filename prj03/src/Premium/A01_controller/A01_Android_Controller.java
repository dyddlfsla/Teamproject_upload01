package Premium.A01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Premium.A02_service.A01_Service;
import Premium.A02_service.A05_AndroidService;
import Premium.vo.And_work;
import Premium.vo.And_workCeo;
import Premium.vo.Emp1;

@Controller
@RequestMapping("/and.do")
public class A01_Android_Controller {
	@Autowired
	private A01_Service service;

	// http://localhost:7080/prj03/and.do?method=mem
	@RequestMapping(params="method=mem")
	public String emeList(Emp1 em, Model d) { 
		d.addAttribute("empList", service.EmpList(em));
		return "pageJsonReport";
	}
	@Autowired
	private A05_AndroidService wservice;
	@RequestMapping(params="method=andwork")
	// http://localhost:7080/prj03/and.do?method=andwork
	public String worList(And_work aw, Model d) {		
		d.addAttribute("workList", wservice.alist(aw));
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=andceowork")
	// http://localhost:7080/prj03/and.do?method=andceowork
	public String worceoList(And_workCeo acw, Model d) {		
		d.addAttribute("workCeoList", wservice.aclist(acw));
		return "pageJsonReport";
	}
}
