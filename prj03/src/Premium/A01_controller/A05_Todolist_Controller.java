package Premium.A01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import Premium.A02_service.dolistService;
import Premium.vo.dolistSch;

@Controller
@RequestMapping("/dolist.do")
public class A05_Todolist_Controller {
	
	@Autowired
	private dolistService service;
	//http://localhost:7080/prj03/dolist.do?method=todolist
	@RequestMapping(params="method=todolist")
	public String dolist() {
	
		return "WEB-INF/views/todolist/Todolist.jsp";
	}
	
	//추가된 부분
	//192.168.4.196:7080/prj03/dolist.do?method=listAjax
	@RequestMapping(params="method=listAjax")
	public String doListData(@ModelAttribute("sch") dolistSch sch,
			Model model) {
		
		model.addAttribute(service.my_do_list(sch));
		
		return "pageJsonReport";
	}
	
	
}
